// Given an array of integers, return the largest gap between the sorted elements of the array.
void main() {
  int gap = largestGap([26, 17, 4, 25, 29, 26, 8, 30, 4, 20, 2, 7, 29, 7, 20, 30, 23, 5]);
  print(gap);
}

int largestGap(List<int> numbersList) {
  int gap = 0;
  numbersList.sort();
  for (int i = 0; i < numbersList.length - 1; i++) {
    final currentGap = numbersList[i + 1] - numbersList[i];
    if (currentGap > gap) gap = currentGap;
  }
  return gap;
}
