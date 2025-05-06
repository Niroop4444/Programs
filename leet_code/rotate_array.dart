/*
Given an array arr[]. Rotate the array to the left 
(counter-clockwise direction) by d steps, where d is a positive integer. 

Note: Consider the array as circular.

Input: arr[] = [1, 2, 3, 4, 5], d = 2
Output: [3, 4, 5, 1, 2]
*/

class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;
    k = k % n;

    void reverse(int start, int end) {
      while (start < end) {
        int temp = nums[start];
        nums[start] = nums[end];
        nums[end] = temp;
        start++;
        end--;
      }
    }

    reverse(0, n - 1); // Reverse entire array
    reverse(0, k - 1); // Reverse first k elements
    reverse(k, n - 1); // Reverse remaining n - k elements
  }
}
