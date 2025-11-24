# Check if a user-entered string contains any digits using a for loop

text = input("Enter a Text: ")
contains_digit = False

def hasDigit(text): 
    for char in text:
        if '0' <= char <= '9':
            return True
    return False

print(hasDigit(text))