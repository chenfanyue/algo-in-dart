void selectionSort(List<int> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    // 假设当前元素为最小值
    int minIndex = i;

    // 查找剩余未排序部分的最小值
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }

    // 交换当前元素和找到的最小值
    if (minIndex != i) {
      int temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];
  print("排序前: $numbers");
  selectionSort(numbers);
  print("排序后: $numbers");
}
