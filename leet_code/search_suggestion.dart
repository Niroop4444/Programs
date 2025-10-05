List<String> searchSuggestions(List<String> words, String searchWord) {
  return words.where((n) => n.startsWith(searchWord)).toList();
}

void main() {
  print(
    "Searched Suggestion ${searchSuggestions(["flutter", "firebase", "riverpod", "bloc"], "f")}",
  );
}
