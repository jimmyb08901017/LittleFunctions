#include <iostream>
#include <vector>
using namespace std;

auto H_n = [](size_t n) {
    size_t matrix_len = size_t(pow(2, n));
    vector<short> tmp(matrix_len, 1);
    vector<vector<short>> H_n(matrix_len, tmp);
        
    size_t n_recur = 4, n_1_recur = 2;
    for (size_t c = 0; c < n; ++c) { // scale up from 1 to n
        for (size_t i = 0; i < matrix_len; ++i) {
            for (size_t j = 0; j < matrix_len; ++j) {
                // temporary variable i_r & j_r
                auto i_r = i % (n_recur);
                auto j_r = j % (n_recur);
                if (i_r >= n_1_recur && j_r >= n_1_recur) {
                    H_n[i][j] *= -1;
                }
            }
        }
        n_1_recur << 1;
        n_recur = n_recur << 1;
    }

    return H_n;
    // for _ in range(n):
    //     for i in range(matrix_len):
    //         for j in range(matrix_len):
    //             i_r = i % n_recur*2
    //             j_r = j % n_recur*2
    //             if i_r >= n_recur and j_r >= n_recur:
    //                 H_recur[i][j] = H_recur[i][j] * -1
    //     n_recur *= 2
};