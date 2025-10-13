void main() {
  print(arrange("Create   a function. that takes a string and returns a string by the length of the words"));
}

List<String> arrange(String sentence) {
  // List<String> words = sentence.split(RegExp(r'\s+'));
  // words.sort((a, b) => a.length.compareTo(b.length));
  final words =
      sentence
          .split(RegExp(r'\s+')) // handles multiple spaces/tabs
          .map((w) => w.replaceAll(RegExp(r'[^\w]'), '')) // remove punctuation
          .where((w) => w.isNotEmpty)
          .toList()
        ..sort((a, b) => a.length.compareTo(b.length));
  return words;
}
