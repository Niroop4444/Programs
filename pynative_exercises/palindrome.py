# A palindrome reads the same forwards and backward

# Python code to check if the given number is a palindrome. 

def isPalindromeNumber(num):
    original_num = num
    reverse_num = 0

    while num > 0:
        reminder = num % 10
        reverse_num = (reverse_num * 10) + reminder
        num = num // 10

    if original_num == reverse_num:
        return True
    else:
        return False

print("Is 12321 a palindrome number?", isPalindromeNumber(12321))
print("Is 1234 a palindrome number?", isPalindromeNumber(1234))

# Python code to check if the given string is a palindrome. 

def isPalindromString(text):
    original_text = text
    reverse_text = original_text[::-1]

    if original_text == reverse_text:
        return True
    else:
        return False

print("Is 'madam' a palindrome string?", isPalindromString("madam"))
print("Is 'python' a palindrome string?", isPalindromString("python"))
