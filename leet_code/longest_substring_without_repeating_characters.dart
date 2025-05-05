/*
Longest Substring Without Repeating Characters
Given a string s, find the length of the longest substring without duplicate 
characters.


*/

class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> seenCharacters = {};
    int longestSubStringFound = 0;
    int start = 0;

    for (int i = 0; i < s.length; i++) {
      String currentCharacter = s[i];

      // If current character was seen before and is inside the current window
      if (seenCharacters.containsKey(currentCharacter) &&
          seenCharacters[currentCharacter]! >= start) {
        // Move the start of the window right after the last seen index of the current character
        start = seenCharacters[currentCharacter]! + 1;
      }

      seenCharacters[currentCharacter] = i;

      longestSubStringFound =
          (i - start + 1 > longestSubStringFound)
              ? (i - start + 1)
              : longestSubStringFound;
    }
    return longestSubStringFound;
  }
}
