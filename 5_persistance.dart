// The additive persistence of an integer, n, is the number of times you have to replace n with the sum of its digits until n becomes a single digit integer.
// Create a function that take an integer as an argument and:
// Return its additive persistence.
// Return its multiplicative persistence.

void main() {
  print(additivePersistence(19));
  print(multiplicativePersistence(19));
}

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
