# Enter your code here. Read input from STDIN. Print output to STDOUT
from datetime import date

ad, am, ay = list(map(int, input().strip().split()))
ed, em, ey = list(map(int, input().strip().split()))
actual = date(ay, am, ad)
expected = date(ey, em, ed)

if actual < expected:
    print(0)
else:
    if am == em and ay == ey:
        print(15*(ad-ed))
    elif ay == ey:
        print(500*(am-em))
    else:
        print(10000)
