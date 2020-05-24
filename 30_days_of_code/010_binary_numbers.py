#!/bin/python3

import math
import os
import random
import re
import sys



if __name__ == '__main__':
    n = int(input())
    s = format(n, 'b')
    seqs = s.split('0')
    result = 0
    for i in seqs:
        if result < len(i):
            result = len(i)
    print(result)
