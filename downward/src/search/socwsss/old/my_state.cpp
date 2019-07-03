#ifndef __MYSTATE__
#define __MYSTATE__

struct MyState {

    int id;
    vector<FactProxy> facts;
    vector<double> op_count;

    MyState() {}

    MyState(int id, vector<FactProxy> facts, vector<double> op_count) {
        this->id = id;
        this->facts = facts;
        this->op_count = op_count;
    }

    MyState(const MyState &other) {
        id = other.id;
        facts = other.facts;
        op_count = other.op_count;
    }
};

#endif
