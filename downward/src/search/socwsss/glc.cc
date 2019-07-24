#include "glc.h"

GLC::GLC() {
    this->yt_bound = -1;
    this->right_side_coeff = 1;
}

GLC::GLC(const GLC& other) {
    this->yt_bound = other.yt_bound;
    this->right_side_coeff = other.right_side_coeff;
    this->ops_bounds = other.ops_bounds;
}

void GLC::add_op_bound(int op_id, int op_bound) {
    ops_bounds.emplace_back(op_id, op_bound);
}

bool GLC::empty() {
    return (this->yt_bound == -1 && this->ops_bounds.size() == 0);
}