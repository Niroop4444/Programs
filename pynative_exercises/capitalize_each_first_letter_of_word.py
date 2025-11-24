# Capitalize the first letter of each word in a string

def capitalize_words(text):
    words = text.split()
    capitalize_words = [word.capitalize() for word in words]
    return ' '.join(capitalize_words)

str1 = "pynative.com is for python lovers"

capitalized_string = capitalize_words(str1)
print("Capitalized string:", capitalized_string)