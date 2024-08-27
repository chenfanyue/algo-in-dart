void quickSort(List<int> list) {
  if (list.length <= 1) return;

  List<int> stack = [];
  stack.add(0);
  stack.add(list.length - 1);

  while (stack.isNotEmpty) {
    int right = stack.removeLast();
    int left = stack.removeLast();

    int pivotIndex = _partition(list, left, right);

    // 区间长度至少为2才压栈
    if (pivotIndex - 1 > left) {
      stack.add(left);
      stack.add(pivotIndex - 1);
    }

    if (pivotIndex + 1 < right) {
      stack.add(pivotIndex + 1);
      stack.add(right);
    }
  }
}

int _partition(List<int> list, int left, int right) {
  int pivot = list[right];
  int i = left - 1;

  for (int j = left; j < right; j++) {
    if (list[j] <= pivot) {
      i++;
      _swap(list, i, j);
    }
  }

  _swap(list, i + 1, right);
  return i + 1;
}

void _swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> numbers = [10, 7, 8, 9, 1, 5];
  quickSort(numbers);
  print('Sorted array: $numbers');
}
