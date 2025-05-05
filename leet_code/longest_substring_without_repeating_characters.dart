/*
Longest Substring Without Repeating Characters
Given a string s, find the length of the longest substring without duplicate 
characters.

Given a string s, find the length of the longest substring without duplicate characters.
Input: s = "abcabcbb"
Output: 3

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
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
