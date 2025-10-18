// The additive persistence of an integer, n, is the number of times you have to replace n with the sum of its digits until n becomes a single digit integer.
// Create a function that take an integer as an argument and:
// Return its additive persistence.
// Return its multiplicative persistence.

void main() {
  print(additivePersistence(19));
  print(multiplicativePersistence(19));
}

/// The additive persistence of an integer, n, is the number of times
/// you have to replace n with the sum of its digits until n becomes
/// a single digit integer.
///
/// For example, the additive persistence of 19 is 3 because
/// 19 -> 10 -> 1.
///
/// Returns the additive persistence of the given integer.
int additivePersistence(int num) {
  int count = 0;
  while (num > 9) {
    num = num.toString().split('').map((e) => int.parse(e)).reduce((a, b) => a + b);
    count++;
  }
  return count;
}

int multiplicativePersistence(int num) {
  int count = 0;
  while (num > 9) {
    num = num.toString().split('').map((e) => int.parse(e)).reduce((a, b) => a * b);
    count++;
  }
  return count;
}
