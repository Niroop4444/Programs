# Given two integer numbers, write a Python program to return 
# their product only if the product is equal to or lower than 
# 1000. Otherwise, return their sum

def multiplication_sum(num1, num2):
    product = num1 * num2

    if product > 1000:
        return num1 + num2
    else:
        return num1 * num2

result = multiplication_sum(20, 30)
print(f"The result is {result}")

result = multiplication_sum(30, 40)
print(f"The result is {result}")