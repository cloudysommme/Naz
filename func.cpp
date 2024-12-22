#include "func.h"
#include <cmath>
double Func::FuncA(int n) {
    double result = 0;
    for (int i = 1; i <= n; ++i) {
        result += pow(-1, i + 1) * (1.0 / (2 * i - 1));
    }
    return result;
}
