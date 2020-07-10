import re

num = int(input().strip())
for _ in range(num):
    a = input().strip()
    try:
        re.compile(a)
        print("True")
    except Exception:
        print("False")
