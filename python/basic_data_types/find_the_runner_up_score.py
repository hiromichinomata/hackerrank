if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    arr = set(arr)
    print(sorted(list(arr), reverse=True)[1])
