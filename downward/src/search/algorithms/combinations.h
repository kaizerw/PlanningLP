#ifndef ALGORITHMS_COMBINATIONS_H
#define ALGORITHMS_COMBINATIONS_H

#include "../task_proxy.h"
#include "../utils/logging.h"
#include "../utils/collections.h"

#include <cassert>
#include <iostream>
#include <vector>

template<typename T>
class Combinations {
     std::vector<T> current_combination;
     std::vector<std::vector<T>> combinations;

     void add_combinations(const std::vector<T> &sequence, int offset, int k) {
         if (k == 0) {
             combinations.push_back(current_combination);
             return;
         }
         for (size_t i = offset; i <= sequence.size() - k; ++i) {
             assert(utils::in_bounds(i, sequence));
             current_combination.push_back(sequence[i]);
             add_combinations(sequence, i + 1, k - 1);
             current_combination.pop_back();
         }
     }

public:
     std::vector<std::vector<T>> && get_combinations(
         const std::vector<T> &sequence, int k) {
         assert(k >= 0);
         combinations.clear();
         current_combination.clear();
         int n = sequence.size();
         if (k > n) {
             return std::move(combinations);
         }
         add_combinations(sequence, 0, k);
         return std::move(combinations);
     }
};

#endif
