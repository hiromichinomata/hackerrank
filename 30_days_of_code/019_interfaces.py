# 36 = 2^2 * 3^3

# 2^0 * 3^0 = 1
# 2^0 * 3^1 = 3
# 2^0 * 3^2 = 9
# 2^1 * 3^0 = 2
# 2^1 * 3^1 = 6
# 2^1 * 3^2 = 18
# 2^2 * 3^0 = 4
# 2^2 * 3^1 = 12
# 2^2 * 3^2 = 36

# 1+3+9+2+6+18+4+12+36 = 91

# (2^0 + 2^1 + 2^2) * (3^0 + 3^1 + 3^2)
# = (1 + 2 + 4) * (1 + 3 + 9)
# = 7 *13
# = 91

class AdvancedArithmetic(object):
    def divisorSum(n):
        raise NotImplementedError

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

class Calculator(AdvancedArithmetic):
    def divisorSum(self, n):
        factored = factorization(n)
        result = 1
        for i, count in factored:
            tmp = 0
            for j in range(count+1):
                tmp += i**j
            result *= tmp
        return result

n = int(input())
my_calculator = Calculator()
s = my_calculator.divisorSum(n)
print("I implemented: " + type(my_calculator).__bases__[0].__name__)
print(s)
