#ifndef GLC_H
#define GLC_H

#include <iostream>
#include <utility>
#include <vector>

using namespace std;

enum GLCState {
    NEW,
    ADDED_AS_LAZY,
    ADDED_AS_USERCUT,
    ADDED_AS_LAZY_AND_USERCUT
};

struct GLC {
    // This struct can represent generalized landmark constraints in the form:
    // [Y_T >= yt_bound] + {[o.id >= o.bound] | for o in ops_bounds}
    // >= right_side_coeff
    // If yt_bound == -1 the [Y_T >= L + 1] bound literal will not be added

    int yt_bound;                        // Y_T bound literal
    int yf_bound;                        // Y_F bound literal
    vector<pair<int, long>> ops_bounds;  // Operators bound literals
    int right_side_coeff;                // Right side coefficient

   public:
    GLC();
    GLC(const GLC &other);
    void add_op_bound(int op_id, long op_bound);
    bool empty();
    bool operator==(const GLC &other) const;
    int get_num_bounds();
};

#endif
