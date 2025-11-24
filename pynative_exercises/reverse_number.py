# Get each digit from a number in the reverse order.
# If the given integer number is 7536, the output shall be “6 3 5 7“, 
# with a space separating the digits.

number = 7536
reverse_number = " ".join([d for d in str(number)[::-1]])
print(reverse_number)