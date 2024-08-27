void mergeSort(List<int> list, int left, int right) {
  List<int> _list = List.filled(list.length, 0);
  _mergeSort(list, left, right, _list);
}

void _mergeSort(List<int> list, int left, int right, List<int> _list) {
  if (left < right) {
    int middle = left + (right - left) ~/ 2;

    _mergeSort(list, left, middle, _list);
    _mergeSort(list, middle + 1, right, _list);

    merge(list, left, middle, right, _list);
  }
}

void merge(List<int> list, int left, int middle, int right, List<int> _list) {
  int i = left, j = middle + 1, k = left;

  while (i <= middle && j <= right) {
    if (list[i] <= list[j]) {
      _list[k] = list[i];
      i++;
    } else {
      _list[k] = list[j];
      j++;
    }
    k++;
  }

  while (i <= middle) {
    _list[k] = list[i];
    i++;
    k++;
  }

  while (j <= right) {
    _list[k] = list[j];
    j++;
    k++;
  }
  
  for (int i = left; i <= right; i++) {
    list[i] = _list[i];
  }
}

void main() {
  List<int> list = [38, 27, 43, 3, 9, 82, 10];
  print('Unsorted list: $list');
  mergeSort(list, 0, list.length - 1);
  print('Sorted list: $list');
}
