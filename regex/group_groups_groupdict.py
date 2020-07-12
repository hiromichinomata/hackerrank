import re

s = input()
m = re.search(r'([a-zA-Z0-9])\1+', s)
if m is None:
    print(-1)
else:
    print(m.group(0)[0])
