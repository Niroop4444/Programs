/*
Given two strings s and t, return true if t is an anagram of s, 
and false otherwise.

Input: s = "anagram", t = "nagaram"
Output: true

Input: s = "rat", t = "car"
Output: false
*/

void main() {
  Solution().isAnagram("rat", "car");
}

class Solution {
  bool isAnagram(String s, String t) {
    String sortedS = (s.split("")..sort()).join();
    String sortedT = (t.split("")..sort()).join();

    return sortedS == sortedT;
  }
}
