from itertools import combinations_with_replacement

s, num = input().strip().split()
s = sorted(s)
num = int(num)
for i in combinations_with_replacement(s, num):
    print("".join(i))
