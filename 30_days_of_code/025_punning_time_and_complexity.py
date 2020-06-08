# Enter your code here. Read input from STDIN. Print output to STDOUT
import sys
input = sys.stdin.readline

def factorization(n):
    arr = []
    temp = n
    for i in range(2, int(-(-n**0.5//1))+1):
        if temp%i==0:
            cnt=0
            while temp%i==0:
                cnt+=1
                temp //= i
            arr.append([i, cnt])

    if temp!=1:
        arr.append([temp, 1])

    return arr

def main():
  t = int(input().strip())

  for i in range(t):
    n = int(input().strip())
    if n == 1:
        print("Not prime")
        continue

    factored = factorization(n)
    if len(factored) == 1 and factored[0][1] == 1:
        print("Prime")
    else:
        print("Not prime")

main()
