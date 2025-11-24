# Python code to generate fibonacci series
# Generate Fibonacci series up to 15 terms

num1, num2 = 0, 1

for i in range(15):
    print(num1, end = " ")
    res = num1 + num2
    num1 = num2
    num2 = res
    