import calendar

m, d, y = list(map(int, input().strip().split()))
n = calendar.day_name[calendar.weekday(y, m, d)]
print(n.upper())
