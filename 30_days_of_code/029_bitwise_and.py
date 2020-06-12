#!/bin/python3

import math
import os
import random
import re
import sys

def calc(n, k):
    a = k-1
    b = k
    if a % 2 == 0:
        return a
    else:
        if (a | b) <= n:
            return a
        else:
            return k-2



if __name__ == '__main__':
    t = int(input())

    for t_itr in range(t):
        nk = input().split()

        n = int(nk[0])
        k = int(nk[1])
        print(calc(n,k))

# 1. 1, 2
# 01
# 10
# => 00

# 2. 1, 3
# 01
# 11
# => 01

# 3. 1, 4
# 001
# 100
# => 000

# 4. 1, 5
# 001
# 101
# => 001

# 5. 2, 3
# 010
# 011
# => 010

# 6. 2, 4
# 010
# 100
# => 000

# 7. 2, 5
# 010
# 101
# => 000

# 8. 3, 4
# 010
# 100
# => 000

# 9. 3, 5
# 011
# 101
# => 001

# 10. 4, 5
# 100
# 101
# => 100

# 11. 5, 6
# 101
# 110
# => 100

# 12. 6, 7
# 110
# 111
# > 110

# 13. 7, 8
# 0111
# 1000
# => 000

# 14, 9, 10
# 1001
# 1010
# => 1000
