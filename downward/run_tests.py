#!/usr/bin/env python

import argparse
import datetime
import json
import math
import multiprocessing
import numpy
import os
import pandas
import pathlib
import random
import re
import shutil
import subprocess

import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot


def is_float(value):
    try:
        float(value)
        return True
    except ValueError:
        return False


class Slave:

    def __init__(self, parsers, all_fieldnames, notplot_fieldnames, plot_fieldnames, config, domain, instance, args, infos):
        self.parsers = parsers
        self.all_fieldnames = all_fieldnames
        self.notplot_fieldnames = notplot_fieldnames
        self.plot_fieldnames = plot_fieldnames
        self.config = config
        self.domain = domain
        self.instance = instance
        self.args = args
        self.infos = infos

    def __call__(self):
        try:
            self.execute().parse().save()
            if self.args.plots:
                self.plot()
        except Exception as e:
            print(self.config, self.domain, self.instance)
            raise e

    def execute(self):
        try:
            command = [os.path.join('.', 'fast-downward.py')]
            command += ["--overall-time-limit", f"{self.args.max_time}m", "--overall-memory-limit", f"{self.args.max_memory}M"]
            command += [os.path.join(os.environ['DOWNWARD_BENCHMARKS'], self.domain, self.instance + '.sas')]
            command += ['--search', self.config['search']]
            self.raw_output = subprocess.run(command, capture_output=True).stdout.decode('utf-8')
        except Exception as e:
            print(self.config, self.domain, self.instance)
            raise e
        return self

    def parse(self):
        self.parsed_output = {}
        self.parsed_output['instance'] = os.path.join(self.config['name'], self.domain, self.instance)

        lb = self.infos.loc[(self.domain, self.instance), 'lower_bound']

        for name, parser in self.parsers.items():
            attr = re.findall(parser['regex'], self.raw_output)

            if len(attr) == 0:
                if 'plot' in name:
                    self.parsed_output[name] = ''
                else:
                    self.parsed_output[name] = 0
                continue

            if parser['type'] == 'int':
                attr = [i for i in attr if is_float(i)]
                attr = attr[-1] if len(attr) > 0 else '0'
                attr = int(float(attr))
            elif parser['type'] == 'float':
                attr = [i for i in attr if is_float(i)]
                attr = attr[-1] if len(attr) > 0 else '0'
                attr = round(float(attr), 10)
            else:
                attr = attr[-1] if len(attr) > 0 else ''

            if   name == 'solved':          attr = int(attr == 0)
            elif name == 'optimal':         attr = int(attr == lb)
            elif name == 'infeasible':      attr = int(attr == 12)
            elif name == 'timeout':         attr = int(attr == 23)
            elif name == 'memout':          attr = int(attr == 22)
            elif name == 'cplex_exception': attr = int(attr == 25)
            elif name == 'best_bound':      attr = int(attr == lb)
            elif name == 'quality_score':   attr = round(attr / lb, 10) if lb > 0 else 0.0

            self.parsed_output[name] = attr

        return self

    def save(self):
        name = os.path.join(self.config['name'], self.domain, self.instance)
        print(f'Saving {name}', flush=True)
        send_email(self.args.name, f'Saving {name}')

        name = os.path.join('.', 'OUTPUT', name)
        notplot_filename = os.path.join(name, 'notplot.xlsx')
        plot_filename = os.path.join(name, 'plot.xlsx')

        pathlib.Path(name).mkdir(parents=True)
        pandas.DataFrame([self.parsed_output]).to_excel(notplot_filename, columns=['instance'] + self.notplot_fieldnames, index=False)
        pandas.DataFrame([self.parsed_output]).to_excel(plot_filename, columns=['instance'] + self.plot_fieldnames, index=False)

        if self.args.save_raw_output:
            raw_output_filename = os.path.join(name, 'raw_output.txt')
            with open(raw_output_filename, 'w') as file:
                file.write(self.raw_output)
        return self

    def plot(self):
        print('Plotting', os.path.join(self.config['name'], self.domain, self.instance), flush=True)

        df = pandas.read_excel(os.path.join('.', 'OUTPUT', self.config['name'], self.domain, self.instance, 'plot.xlsx'))
        _, data = list(df.iterrows())[0]
        data = dict(data)

        for parser in list(data.keys()):
            if parser.startswith('plot_line'):
                y = str(data[parser]).split(';')
                if y != '' and len(y) > 0:
                    y = [round(float(i), 10) for i in y]

                    fig = pyplot.figure()
                    ax = fig.add_subplot(111)
                    ax.set_title(f"{self.config['name']} - {self.domain} - {self.instance} - {parser}")
                    ax.plot(y)
                    fig.savefig(os.path.join('.', 'OUTPUT', self.config['name'], self.domain, self.instance, parser + '.png'), dpi=300)
                    pyplot.close(fig)

            if parser.startswith('plot_bar'):
                y = str(data[parser]).split(';')[:-1]
                if y != '' and len(data) > 0:
                    x = [i.split('|')[0] for i in y]
                    with open(os.path.join('.', 'OUTPUT', self.config['name'], self.domain, self.instance, 'ops_names.txt'), 'w') as opsfile:
                        for i, xi in enumerate(x):
                            opsfile.write(f'{i} = {xi}\n')

                    x = [str(i) for i, _ in enumerate(x)]
                    y = [round(float(i.split('|')[1]), 10) for i in y]

                    fig = pyplot.figure()
                    ax = fig.add_subplot(111)
                    ax.set_title(f"{self.config['name']} - {self.domain} - {self.instance} - {parser}")
                    ax.bar(x, y)
                    fig.savefig(os.path.join('.', 'OUTPUT', self.config['name'], self.domain, self.instance, parser + '.png'), dpi=300)
                    pyplot.close(fig)

    @staticmethod
    def executed(name, domain, instance):
        return pathlib.Path(os.path.join('.', 'OUTPUT', name, domain, instance)).exists()


class Master:

    def __init__(self, args):
        self.args = args

        # Read in json parsers
        self.parsers = json.load(open(os.path.join('./json', 'parsers.json')))
        self.all_fieldnames = list(self.parsers.keys())
        self.notplot_fieldnames = [i for i in self.all_fieldnames if not i.startswith('plot_')]
        self.plot_fieldnames = [i for i in self.all_fieldnames if i.startswith('plot_')]

        # Fetch and translate instances for all available domains
        self.all_domains = ['_airport', '_blocks', '_depot', '_gripper2hands', '_gripper1hand', 'barman-opt11-strips', 'elevators-opt11-strips', 'nomystery-opt11-strips',
                            'openstacks-opt11-strips', 'parcprinter-opt11-strips', 'pegsol-opt11-strips', 'scanalyzer-opt11-strips', 'sokoban-opt11-strips',
                            'transport-opt11-strips', 'visitall-opt11-strips', 'woodworking-opt11-strips']
        self.all_instances = {domain: self.fetch_and_translate_files(domain) for domain in self.all_domains}

        # Read in informations about problems
        dtypes = {'domain': str, 'ID': int, 'problem': str, 'lower_bound': int, 'upper_bound': int}
        self.infos = pandas.read_csv('./infos.csv', dtype=dtypes)
        self.infos.set_index(['domain', 'problem'], inplace=True)

        # Read in json configs
        self.args.configs = json.load(open(self.args.configs))

        # Collect all distinct tests
        self.all_tests = []
        for config in self.args.configs:
            for domain in config['domains']:
                for instance in self.all_instances[domain]:
                    if not Slave.executed(config['name'], domain, instance):
                        self.all_tests.append(Slave(self.parsers, self.all_fieldnames, self.notplot_fieldnames, self.plot_fieldnames, config, domain, instance, self.args, self.infos))
        random.shuffle(self.all_tests)

        estimated_time = math.ceil(len(self.all_tests) / ((60 / self.args.max_time) * self.args.n_procs))
        print(f'Executing {len(self.all_tests)} tests', flush=True)
        print(f'Estimated time: {estimated_time} hours', flush=True)
        print(f"ESTIMATED END: {(pandas.to_datetime('today') + pandas.to_timedelta(f'{estimated_time}h')).strftime('%d/%m/%Y %H:%M')}", flush=True)

    def __call__(self):
        print(f"BEGIN: {datetime.datetime.now().strftime('%d/%m/%Y %H:%M')}", flush=True)

        try:
            # Build Fast Downward and execute all tests
            print('Building Fast Downward...', flush=True)
            subprocess.run([os.path.join('.', 'build.py')], capture_output=True)

            print('Executing tests...', flush=True)
            with multiprocessing.Pool(self.args.n_procs) as pool:
                pool.map(self.bridge, self.all_tests)

            # Remove all .sas files
            [os.remove(i) for i in pathlib.Path('.').glob('*.sas')]

            # Merge csvs by domains and configs
            print('Merging...', flush=True)
            self.merge()

            # Perform several checks
            print('Checking...', flush=True)
            self.check()
        except Exception as e:
            raise e

        print(f"END: {datetime.datetime.now().strftime('%d/%m/%Y %H:%M')}", flush=True)

    def merge(self):
        funcs = {'sum': numpy.sum, 'mean': numpy.mean}
        out_columns = ['instance'] + self.notplot_fieldnames
        blank_line = pandas.DataFrame({name: '' for name in self.notplot_fieldnames}, index=[0])
        header = pandas.DataFrame({column: column for column in out_columns}, index=[0])

        # Merging by each domain
        for config in self.args.configs:
            name = config['name']
            for domain in config['domains']:
                basename = os.path.join('.', 'OUTPUT', name, domain)
                dfs = [pandas.read_excel(os.path.join(basename, instance, 'notplot.xlsx')) for instance in self.all_instances[domain]]
                df = pandas.concat(dfs, ignore_index=True)

                summary = df.apply({name: funcs[self.parsers[name]['summary']] for name in self.notplot_fieldnames})
                summary['instance'] = 'Summary'
                df = df.append([summary], ignore_index=True)
                df.to_excel(os.path.join(basename, name + '_' + domain + '.xlsx'), columns=out_columns, index=False)

        # Merging by each config
        dfs_configs = []
        for config in self.args.configs:
            name = config['name']
            dfs = []
            for domain in config['domains']:
                basename = os.path.join('.', 'OUTPUT', name, domain)
                dfs.append(header)
                dfs.append(pandas.read_excel(os.path.join(basename, name + '_' + domain + '.xlsx')))
                dfs.append(blank_line)
            df = pandas.concat(dfs, ignore_index=True, sort=False)
            dfs_configs.append((name, df))
            df.to_excel(os.path.join('.', 'OUTPUT', name, name + '.xlsx'), columns=out_columns, index=False, header=False)

        # Top-level merging
        dfs = []
        for config in self.args.configs:
            name = config['name']
            summaries = []
            for domain in config['domains']:
                filename = os.path.join('.', 'OUTPUT', name, domain, name + '_' + domain + '.xlsx')
                summary = pandas.read_excel(filename)
                summary = summary[summary['instance'] == 'Summary']
                summary['instance'] = os.path.join(name, domain)
                summaries.append(summary)

            df = pandas.concat(summaries, ignore_index=True)
            summary = df.apply({name: funcs[self.parsers[name]['summary']] for name in self.notplot_fieldnames})
            summary['instance'] = 'Summary'
            df = df.append(summary, ignore_index=True)
            dfs.append(header)
            dfs.append(df)
            dfs.append(blank_line)

        with pandas.ExcelWriter(os.path.join('.', 'OUTPUT', self.args.name + '.xlsx')) as writer:
            pandas.concat(dfs, ignore_index=True, sort=False).to_excel(writer, columns=out_columns, index=False, header=False, sheet_name='Geral')
            for name, df in dfs_configs:
                df.to_excel(writer, columns=out_columns, index=False, header=False, sheet_name=name)


    def check(self):
        infeasibles, not_optimals = [], []

        for config in self.args.configs:
            name = config['name']
            for domain in config['domains']:
                basename = os.path.join('.', 'OUTPUT', name, domain)
                for instance in self.all_instances[domain]:
                    df = pandas.read_excel(os.path.join(basename, instance, 'notplot.xlsx'))

                    infeasible = (df['infeasible'] == 1).all()
                    if infeasible:  infeasibles.append(os.path.join(name, domain, instance))

                    not_optimal = ((df['solved'] == 1).all() and (df['plan_cost'] != self.infos.loc[(domain, instance), 'lower_bound']).all())
                    if not_optimal: not_optimals.append(os.path.join(name, domain, instance))

        print('INFEASIBLES:', flush=True)
        for infeasible in infeasibles:
            print('\t', infeasible, flush=True)
        print('\nNOT OPTIMALS:', flush=True)
        for not_optimal in not_optimals:
            print('\t', not_optimal, flush=True)

    @staticmethod
    def bridge(args):
        args()

    def fetch_and_translate_files(self, domain):
        files = list(pathlib.Path(os.path.join(os.environ['DOWNWARD_BENCHMARKS'], domain)).glob('*.pddl'))
        files = [str(i) for i in files if not 'domain' in i.name]
        for filename in files:
            if not os.path.exists(filename.replace('.pddl', '.sas')):
                command = [os.path.join('.', 'fast-downward.py')]
                command += [filename]
                subprocess.run(command, capture_output=True)
                shutil.move('./output.sas', filename.replace('.pddl', '.sas'))
        files = [os.path.basename(i).replace('.pddl', '') for i in files]
        return sorted(files)


def send_email(subject, text):
    import smtplib, ssl

    port = 465
    smtp_server = 'smtp.gmail.com'
    sender_email = 'kield92@gmail.com'
    receiver_email = 'kaizerwesley@gmail.com'
    password = 'Rudiger2.'
    message = f'Subject: {subject}\n'
    message += text

    context = ssl.create_default_context()
    with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
        server.login(sender_email, password)
        server.sendmail(sender_email, receiver_email, message)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('--configs', help='Config file.', type=str, required=True)

    parser.add_argument('--max_time', help='Max time per test in minutes.', type=int, default=30)
    parser.add_argument('--max_memory', help='Max mem per test in MB.', type=int, default=3584)
    parser.add_argument('--n_procs', help='Number of CPUS.', type=int, default=os.cpu_count())

    parser.add_argument('--name', help='Experiment name.', type=str, default=os.getcwd().split('/')[-1])
    parser.add_argument('--plots', help='If save plots.', action='store_true')
    parser.add_argument('--save_raw_output', help='If save raw output.', action='store_true')

    args = parser.parse_args()

    print(args)
    send_email(args.name, str(args))
    try:
        Master(args)()
    finally:
        send_email(args.name, ''.join(open('nohup.out').readlines()))
