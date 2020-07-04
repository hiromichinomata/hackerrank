from itertools import permutations

s, num = input().strip().split()
s = sorted(s)
num = int(num)
for i in permutations(s, num):
    print("".join(i))
