def occurances_of_substring(str1, substr):
   occurances = str1.lower().count(substr)
   return occurances

print(occurances_of_substring("The quick brown fox jumps over the lazy dog", "the"))