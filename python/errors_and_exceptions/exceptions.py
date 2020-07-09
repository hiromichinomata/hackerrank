num = int(input().strip())
for _ in range(num):
    try:
        a, b = list(map(int, input().strip().split()))
        result = a//b
        print(result)
    except Exception as e:
        print("Error Code:",e)
