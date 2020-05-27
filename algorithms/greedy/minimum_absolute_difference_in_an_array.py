#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the minimumAbsoluteDifference function below.
def minimumAbsoluteDifference(arr):
    result = 99999999999
    sorted_arr = sorted(arr)
    for i in range(len(sorted_arr)-1):
        diff = abs(sorted_arr[i]-sorted_arr[i+1])
        if diff < result:
            result = diff

    return result

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    result = minimumAbsoluteDifference(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
