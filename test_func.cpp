#include <gtest/gtest.h>
#include "func.h"

TEST(FuncTest, FuncA) {
    Func f;
    EXPECT_EQ(f.FuncA(3), 1 - 1.0/3 + 1.0/5);
}

