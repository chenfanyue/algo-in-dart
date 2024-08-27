void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
  /**
  for (int i = 1; i < arr.length; i++) {
    for (int j = i; j >= 1; j--) {
      if (arr[j - 1] <= arr[j]) {
        break;
      } else {
        int temp = arr[j - 1];
        arr[j - 1] = arr[j];
        arr[j] = temp;
      }
    }
  }
  */
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6];
  print("Unsorted array: $arr");
  insertionSort(arr);
  print("Sorted array: $arr");
}
