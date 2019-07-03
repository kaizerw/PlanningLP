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
    ops_bounds.push_back(make_pair(op_id, op_bound));
}

size_t GLC::get_op_bounds_size() { return this->ops_bounds.size(); }

vector<pair<int, int>> GLC::get_ops_bounds() { return this->ops_bounds; }

int GLC::get_yt_bound() { return this->yt_bound; }

void GLC::set_yt_bound(int new_yt_bound) { this->yt_bound = new_yt_bound; }

int GLC::get_right_side_coeff() { return this->right_side_coeff; }

void GLC::set_right_side_coeff(int new_right_side_coeff) {
    this->right_side_coeff = new_right_side_coeff;
}