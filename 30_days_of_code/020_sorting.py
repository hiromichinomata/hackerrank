#!/bin/python3

import sys

n = int(input().strip())
a = list(map(int, input().strip().split(' ')))
# Write Your Code Here

# Track number of elements swapped during a single array traversal
num_of_swaps = 0

for i in range(n):
    for j in range(n-1):
        # Swap adjacent elements if they are in decreasing order
        if (a[j] > a[j + 1]):
            a_j = a[j]
            a_j1 = a[j+1]
            a[j] = a_j1
            a[j+1] = a_j
            num_of_swaps += 1
    # If no elements were swapped during a traversal, array is sorted
    if num_of_swaps == 0:
        break

print("Array is sorted in " + str(num_of_swaps) +  " swaps.")
print("First Element: " + str(a[0]))
print("Last Element: " + str(a[-1]))
