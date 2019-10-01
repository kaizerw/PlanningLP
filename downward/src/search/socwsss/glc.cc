#include "glc.h"

GLC::GLC() {
    this->yt_bound = -1;
    this->yf_bound = -1;
    this->right_side_coeff = 1;
}

GLC::GLC(const GLC& other) {
    this->yt_bound = other.yt_bound;
    this->yf_bound = other.yf_bound;
    this->right_side_coeff = other.right_side_coeff;
    this->ops_bounds = other.ops_bounds;
}

void GLC::add_op_bound(int op_id, long op_bound) {
    ops_bounds.emplace_back(op_id, op_bound);
}

bool GLC::empty() {
    return (this->yt_bound == -1 && this->yf_bound == -1 &&
            this->ops_bounds.size() == 0);
}

bool GLC::operator==(const GLC& other) const {
    return (this->yt_bound == other.yt_bound &&
            this->yf_bound == other.yf_bound &&
            this->ops_bounds == other.ops_bounds);
}

int GLC::get_num_bounds() {
    int n_bounds = this->ops_bounds.size();
    if (yt_bound != -1) {
        n_bounds += 1;
    }
    if (yf_bound != -1) {
        n_bounds += 1;
    }
    return n_bounds;
}