// Create a function that determines whether elements in an array
// can be re-arranged to form a consecutive list of numbers
// where each number appears exactly once.
// cons([5, 1, 4, 3, 2]) ➞ true
// Can be re-arranged to form [1, 2, 3, 4, 5]

void main() {
  print(cons([55, 59, 58, 56, 57]));
}

bool cons(List<int> numbers) {
  numbers.sort();
  if (numbers.length < 2) return false;
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] + 1 != numbers[i + 1]) {
      return false;
    }
  }
  return true;
}
