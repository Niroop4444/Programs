/*
Given an array of strings strs, group the anagrams together. 
You can return the answer in any order.

Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
*/

void main() {
  List<String> words = ["eat", "tea", "tan", "ate", "nat", "bat"];
  List<List<String>> groupedAnagramWords = groupAnagrams(words);

  print("Anagram words is $groupedAnagramWords");
}

List<List<String>> groupAnagrams(List<String> words) {
  Map<String, List<String>> anagramMap = {};

  for (String word in words) {
    // Sort characters in the word to get the key
    List<String> chars = word.split("")..sort();
    String key = chars.join();

    if (!anagramMap.containsKey(key)) {
      anagramMap[key] = [];
    }

    anagramMap[key]!.add(word);
  }

  return anagramMap.values.toList();
}
