#ifndef GLC_H
#define GLC_H

#include <iostream>
#include <utility>
#include <vector>

using namespace std;

struct GLC {
    // This struct can represent generalized landmark constraints in the form:
    // [Y_T >= yt_bound] + {[o.id >= o.bound] | for o in ops_bounds}
    // >= right_side_coeff
    // If yt_bound == -1 the [Y_T >= L + 1] bound literal will not be added

    int yt_bound;                       // Y_T bound literal
    vector<pair<int, int>> ops_bounds;  // Operators bound literals
    int right_side_coeff;               // Right side coefficient

   public:
    GLC();
    GLC(const GLC &other);
    void add_op_bound(int op_id, int op_bound);
    bool empty();
};

#endif
