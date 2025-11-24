# Python code to find how often the substring “Emma” appears in the given string. 

def occurances_of_substring(str1, substr):
   occurances = str1.lower().count(substr.lower())
   return occurances

print(occurances_of_substring("Emma is good developer. Emma is a writer", "Emma"))