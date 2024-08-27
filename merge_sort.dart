void mergeSort(List<int> list, int left, int right) {
  if (left < right) {
    int middle = left + (right - left) ~/ 2;

    mergeSort(list, left, middle);
    mergeSort(list, middle + 1, right);

    merge(list, left, middle, right);
  }
}

void merge(List<int> list, int left, int middle, int right) {
  int n1 = middle - left + 1;
  int n2 = right - middle;

  List<int> leftList = List.filled(n1, 0);
  List<int> rightList = List.filled(n2, 0);

  for (int i = 0; i < n1; i++) {
    leftList[i] = list[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightList[j] = list[middle + 1 + j];
  }

  int i = 0, j = 0, k = left;

  while (i < n1 && j < n2) {
    if (leftList[i] <= rightList[j]) {
      list[k] = leftList[i];
      i++;
    } else {
      list[k] = rightList[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    list[k] = leftList[i];
    i++;
    k++;
  }

  while (j < n2) {
    list[k] = rightList[j];
    j++;
    k++;
  }
}

void main() {
  List<int> list = [38, 27, 43, 3, 9, 82, 10];
  print('Unsorted list: $list');
  mergeSort(list, 0, list.length - 1);
  print('Sorted list: $list');
}
