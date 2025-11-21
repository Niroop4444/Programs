# Python code to accept a string from the user and display 
# characters present at an even index number.

def getCharactersAtEvenIndex(text):
    for i in text[0::2]:
        print(i)

str = "PYnative"
getCharactersAtEvenIndex(str)