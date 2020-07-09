num = int(input().strip())
for _ in range(num):
    try:
        a, b = list(map(int, input().strip().split()))
        result = a/b
        print(result)
    except Error as e:
        print("Error Code:",e)
