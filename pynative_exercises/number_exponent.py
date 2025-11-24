# Get an int value of base raises to the power of exponent
# base = 2
# exponent = 5
# 2 raises to the power of 5: 32 i.e. (2 * 2 * 2 * 2 * 2 = 32)

def exponent(base, exp):
    num = exp 
    result = 1
    while num > 0:
        result *= base
        num -= 1
    return result

print(exponent(5, 4))