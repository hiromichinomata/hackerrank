from itertools import product

a = list(map(int, input().strip().split()))
b = list(map(int, input().strip().split()))

print(*list(product(a, b)), sep=' ')
