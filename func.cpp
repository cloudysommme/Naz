#include "func.h"

double Func::FuncA(int n) {
    double result = 0;
    for (int i = 1; i <= n; ++i) {
        result += pow(-1, i + 1) * pow(4, 2 * i - 1) / (2 * i - 1);
    }
    return result;
}
// n: number of terms to sum in the infinite sequence
