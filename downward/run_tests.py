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


class Slave:

    def __init__(self, parsers, all_fieldnames, config, domain, instance, args, infos):
        self.parsers = parsers
        self.all_fieldnames = all_fieldnames
        self.config = config
        self.domain = domain
        self.instance = instance
        self.args = args
        self.infos = infos

    def execute(self):
        if Slave.executed(self.config['name'], self.domain, self.instance):
            return self
        
        name = os.path.join(self.config['name'], self.domain, self.instance)
        output_folder = os.path.join('.', 'OUTPUT', name)
        try:
            command = [os.path.join('.', 'fast-downward.py')]
            command += ["--overall-time-limit", f"{self.args.max_time}m", "--overall-memory-limit", f"{self.args.max_memory}M"]
            command += [os.path.join(os.environ['DOWNWARD_BENCHMARKS'], self.domain, self.instance + '.sas')]
            command += ['--search', self.config['search']]
            
            pathlib.Path(output_folder).mkdir(parents=True)
            with open(os.path.join(output_folder, 'output1.txt'), 'w') as output1_file:
                with open(os.path.join(output_folder, 'output2.txt'), 'w') as output2_file:
                    subprocess.run(command, stdout=output1_file, stderr=output2_file)
            
            print(f'Test {name} saved', flush=True)
            send_email(self.args.name, f'Test {name} saved')
        except Exception as e:
            shutil.rmtree(output_folder, ignore_errors=True)
            print(getattr(e, 'message', repr(e)), flush=True)
            print(self.config['name'], self.domain, self.instance, flush=True)
            raise e
            
        return self

    def parse_and_save(self):
        try:
            self.parsed_output = {parser: '' for parser in self.parsers}
            self.parsed_output['instance'] = os.path.join(self.config['name'], self.domain, self.instance)

            lb = self.infos.loc[(self.domain, self.instance), 'lower_bound']
            
            with open(os.path.join('.', 'OUTPUT', self.parsed_output['instance'], 'output1.txt')) as file:
                for line in file:
                    for name, parser in self.parsers.items():
                        match = []
                        for i in re.findall(parser['regex'], line.strip()):
                            if isinstance(i, tuple):
                                match.extend([j for j in i if j])
                            else:
                                match.append(i)
                        attr = match[0] if match else ''

                        if attr and parser['type'] in ['int', 'float']:
                            attr = round(float(attr), 10)
                            attr = int(attr) if parser['type'] == 'int' else attr
                            
                            if   name == 'solved':                         attr = int(attr == 0)
                            elif name == 'optimal':                        attr = int(attr == lb)
                            elif name == 'infeasible':                     attr = int(attr == 13)
                            elif name == 'timeout':                        attr = int(attr == 23)
                            elif name == 'memout':                         attr = int(attr == 22)
                            elif name == 'cplex_exception':                attr = int(attr == 25)
                            elif name == 'solution_not_found':             attr = int(attr == 12)
                            elif name == 'other_error':                    attr = int(attr not in [0, 13, 23, 22, 25, 12])
                            elif name == 'quality_score':                  attr = round(attr / lb, 10) if lb > 0 else 0.0
                            elif name == 'optimal_plan_cost':              attr = lb
                            elif name == 'max_f_equals_optimal_plan_cost': attr = int(attr == lb)
                            
                        self.parsed_output[name] = attr if attr != '' else self.parsed_output[name]
                            
            self.parsed_output['max_op_count_solved'] = self.parsed_output['max_op_count_solved'] if self.parsed_output['solved'] else ''
            self.parsed_output['max_num_ops_solved'] = self.parsed_output['max_num_ops_solved'] if self.parsed_output['solved'] else ''
            self.parsed_output['max_num_distinct_ops_solved'] = self.parsed_output['max_num_distinct_ops_solved'] if self.parsed_output['solved'] else ''
            self.parsed_output['seqs_solved'] = self.parsed_output['seqs_solved'] if self.parsed_output['solved'] else ''
            self.parsed_output['repeated_seqs_solved'] = self.parsed_output['repeated_seqs_solved'] if self.parsed_output['solved'] else ''
                        
            filename = os.path.join('.', 'OUTPUT', self.config['name'], self.domain, self.instance, 'parsed.xlsx')
            pandas.DataFrame([self.parsed_output]).to_excel(filename, columns=['instance'] + self.all_fieldnames, index=False)
        except Exception as e:
            print(getattr(e, 'message', repr(e)), flush=True)
            print(self.config['name'], self.domain, self.instance, flush=True)
            raise e

        return self

    @staticmethod
    def executed(name, domain, instance):
        return pathlib.Path(os.path.join('.', 'OUTPUT', name, domain, instance, 'output1.txt')).exists()


class Master:

    def __init__(self, args):
        self.args = args

        # Read in json parsers
        self.parsers = json.load(open(os.path.join('./json', 'parsers.json')))
        self.all_fieldnames = list(self.parsers.keys())

        # Fetch and translate instances for all available domains
        self.all_domains = ['_airport', '_blocks', '_depot', '_gripper2hands', '_gripper1hand', 'barman-opt11-strips', 'elevators-opt11-strips', 'nomystery-opt11-strips',
                            'openstacks-opt11-strips', 'parcprinter-opt11-strips', 'pegsol-opt11-strips', 'scanalyzer-opt11-strips', 'sokoban-opt11-strips',
                            'transport-opt11-strips', 'visitall-opt11-strips', 'woodworking-opt11-strips', 'elevators_selected', 'nomystery-selected', 
                            'scanalyzer-selected', 'transport-selected', 'visitall-selected']
        self.all_instances = {domain: self.fetch_and_translate_files(domain) for domain in self.all_domains}

        # Read in informations about problems
        dtypes = {'domain': str, 'ID': int, 'problem': str, 'lower_bound': int, 'upper_bound': int}
        self.infos = pandas.read_csv('./infos.csv', dtype=dtypes)
        self.infos.set_index(['domain', 'problem'], inplace=True)

        # Read in json configs
        self.args.configs = json.load(open(self.args.configs))

        # Collect all tests
        self.all_tests = []
        for config in self.args.configs:
            for domain in config['domains']:
                for instance in self.all_instances[domain]:
                    self.all_tests.append(Slave(self.parsers, self.all_fieldnames, config, domain, instance, self.args, self.infos))
        random.shuffle(self.all_tests)

        tests_to_execute = sum(not Slave.executed(i.config['name'], i.domain, i.instance) for i in self.all_tests)
        estimated_time = math.ceil(tests_to_execute / ((60 / self.args.max_time) * self.args.n_procs))
        print(f'Executing {tests_to_execute} test(s)', flush=True)
        print(f'Estimated time: {estimated_time} hour(s)', flush=True)
        print(f"ESTIMATED END: {(pandas.to_datetime('today') + pandas.to_timedelta(f'{estimated_time}h')).strftime('%d/%m/%Y %H:%M')}", flush=True)

    def __call__(self):
        print(f"BEGIN: {datetime.datetime.now().strftime('%d/%m/%Y %H:%M')}", flush=True)

        try:
            # Build Fast Downward and execute all tests
            print('Building Fast Downward...', flush=True)
            subprocess.run([os.path.join('.', 'build.py')], capture_output=True)

            print('Executing tests...', flush=True)
            with multiprocessing.Pool(self.args.n_procs) as pool:
                pool.map(self.execute_bridge, self.all_tests)
                
            print('Parsing outputs...', flush=True)
            with multiprocessing.Pool(self.args.n_procs) as pool:
                pool.map(self.parse_and_save_bridge, self.all_tests)

            # Remove all .sas files
            [os.remove(i) for i in pathlib.Path('.').glob('*.sas')]

            # Merge csvs by domains and configs
            print('Merging...', flush=True)
            self.merge()

            # Perform checks
            print('Checking...', flush=True)
            self.check()
        except Exception as e:
            print(getattr(e, 'message', repr(e)), flush=True)
            raise e

        print(f"END: {datetime.datetime.now().strftime('%d/%m/%Y %H:%M')}", flush=True)

    def merge(self):
        funcs = {'sum': numpy.sum, 'mean': numpy.mean}
        out_columns = ['instance'] + self.all_fieldnames
        blank_line = pandas.DataFrame({name: '' for name in self.all_fieldnames}, index=[0])
        header = pandas.DataFrame({column: column for column in out_columns}, index=[0])

        # Merging by each domain
        for config in self.args.configs:
            name = config['name']
            for domain in config['domains']:
                basename = os.path.join('.', 'OUTPUT', name, domain)
                dfs = [pandas.read_excel(os.path.join(basename, instance, 'parsed.xlsx')) for instance in self.all_instances[domain]]
                df = pandas.concat(dfs, ignore_index=True)

                summary = df.apply({name: funcs[self.parsers[name]['summary']] for name in self.all_fieldnames})
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
            summary = df.apply({name: funcs[self.parsers[name]['summary']] for name in self.all_fieldnames})
            summary['instance'] = 'Summary'
            df = df.append(summary, ignore_index=True)
            dfs.append(header)
            dfs.append(df)
            dfs.append(blank_line)

        with pandas.ExcelWriter(os.path.join('.', 'OUTPUT', self.args.name + '.xlsx')) as writer:
            pandas.concat(dfs, ignore_index=True, sort=False).to_excel(writer, columns=out_columns, index=False, header=False, sheet_name='Geral')
            for name, df in dfs_configs:
                df.to_excel(writer, columns=out_columns, index=False, header=False, sheet_name=name)
        
        # Send top-level table by email
        send_email(args.name, '', os.path.join('.', 'OUTPUT', self.args.name + '.xlsx'))

    def check(self):
        infeasibles, not_optimals, other_errors = [], [], []

        for config in self.args.configs:
            name = config['name']
            for domain in config['domains']:
                basename = os.path.join('.', 'OUTPUT', name, domain)
                for instance in self.all_instances[domain]:
                    df = pandas.read_excel(os.path.join(basename, instance, 'parsed.xlsx'))

                    infeasible = (df['infeasible'] == 1).all()
                    if infeasible:  infeasibles.append(os.path.join(name, domain, instance))

                    not_optimal = ((df['solved'] == 1).all() and (df['plan_cost'] != self.infos.loc[(domain, instance), 'lower_bound']).all())
                    if not_optimal: not_optimals.append(os.path.join(name, domain, instance))
                    
                    other_error = (df['other_error'] == 1).all()
                    if other_error:  other_errors.append(os.path.join(name, domain, instance))

        print('INFEASIBLES:', flush=True)
        for infeasible in infeasibles:
            print('\t', infeasible, flush=True)
        print('\nNOT OPTIMALS:', flush=True)
        for not_optimal in not_optimals:
            print('\t', not_optimal, flush=True)
        print('\nOTHER ERRORS:', flush=True)
        for other_error in other_errors:
            print('\t', other_error, flush=True)

    @staticmethod
    def execute_bridge(args):
        args.execute()
        
    @staticmethod
    def parse_and_save_bridge(args):
        args.parse_and_save()

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


def send_email(subject, text, filename=None):
    import smtplib
    from email.mime.multipart import MIMEMultipart
    from email.mime.text import MIMEText
    from email.mime.base import MIMEBase
    from email import encoders

    fromaddr = "kield92@gmail.com"
    toaddr = "kaizerwesley@gmail.com"

    msg = MIMEMultipart()
    msg['From'] = fromaddr
    msg['To'] = toaddr

    msg['Subject'] = subject
    body = text

    try:
        msg.attach(MIMEText(body, 'plain'))
        if filename:
            attachment = open(filename, "rb")
            p = MIMEBase('application', 'octet-stream')
            p.set_payload((attachment).read())
            encoders.encode_base64(p)
            p.add_header('Content-Disposition', "attachment; filename= %s" % filename)
            msg.attach(p)

        s = smtplib.SMTP('smtp.gmail.com', 587)
        s.starttls()
        s.login(fromaddr, "Rudiger2.")
        text = msg.as_string()
        s.sendmail(fromaddr, toaddr, text)
        s.quit()
    except Exception as e:
        print(getattr(e, 'message', repr(e)), flush=True)
        print('FAILED TO SEND EMAIL', flush=True)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('--configs', help='Config file.', type=str, default='json/default.json')

    parser.add_argument('--max_time', help='Max time per test in minutes.', type=int, default=30)
    parser.add_argument('--max_memory', help='Max mem per test in MB.', type=int, default=3584)
    parser.add_argument('--n_procs', help='Number of CPUS.', type=int, default=os.cpu_count())

    parser.add_argument('--name', help='Experiment name.', type=str, default=os.getcwd().split('/')[-1])

    args = parser.parse_args()

    print(args, flush=True)
    send_email(args.name, str(args))
    try:
        Master(args)()
    finally:
        try:
            send_email(args.name, ''.join(open('nohup.out').readlines()))
        except Exception as e:
            print(getattr(e, 'message', repr(e)), flush=True)
            print('FAILED TO SEND nohup.out', flush=True)
            
