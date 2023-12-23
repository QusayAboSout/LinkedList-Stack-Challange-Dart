void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6];
  List<dynamic> arr = reverseList(nums);
  for (int i = 0; i < nums.length; i++) {
    print(arr[i]);
  }
}

List reverseList(List<int> arr) {
  List<int> nums = [];
  for (int i = arr.length-1; i >= 0; i--) {
    nums.add(arr[i]);
  }
  return nums;
}
