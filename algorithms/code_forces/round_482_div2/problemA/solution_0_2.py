n = int(input())
n += 1
result = 0
if n == 1:
    result = 0
elif n == 2:
    result = 1
elif n % 2 == 0:
    result = n / 2
else:
    result = n
print(int(result))