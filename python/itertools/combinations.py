from itertools import combinations

s, num = input().strip().split()
s = sorted(s)
num = int(num)
for j in range(1, num+1):
    for i in combinations(s, j):
        print("".join(i))
