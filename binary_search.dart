int binarySearch(List<int> sortedList, int target) {
  int left = 0;
  int right = sortedList.length - 1;

  while (left <= right) {
    int middle = left + (right - left) ~/ 2;
    if (sortedList[middle] == target) {
      return middle;
    } else if (sortedList[middle] < target) {
      left = middle + 1;
    } else {
      right = middle - 1;
    }
  }

  return -1; // Target not found
}

void main() {
  List<int> numbers = [1, 3, 5, 7, 9, 11];
  int target = 7;
  int index = binarySearch(numbers, target);
  print('Index of $target: $index'); // Output: Index of 7: 3
}
