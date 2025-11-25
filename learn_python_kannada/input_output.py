# Python program that asks the user for their name and age, 
# then prints a personalized greeting message. Use both 
# the + operator and f-strings for output.

name = input("Enter your name: ")
age = input("Enter your age: ")
print("Hello "+name+"! You are "+age+" years old.")

# Python program that:
# Takes a sentence as input from the user.
# Prints the sentence in all uppercase and lowercase.
# Replaces all spaces with underscores.
# Removes leading and trailing whitespace.

sentence = input("Enter a sentence: ")
print(sentence.upper())
print(sentence.lower())
print(sentence.replace(" ", "_"))
print(sentence.strip())

# Python program that:
# Asks the user for a string.
# Prints how many characters are in the string, excluding spaces.

string = input("Enter a string: ")
print(f"Number of characters (excluding spaces): {len(string.strip())}")

# Python program that uses escape sequences to print the following output:
# Hello
#     World
# This is a backslash: \

print("Hello\n\tWorld\nThis is a backslash: \\")