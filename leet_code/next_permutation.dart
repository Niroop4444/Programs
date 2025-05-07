/*
Given an array of integers arr[] representing a permutation, 
implement the next permutation that rearranges the numbers into 
the lexicographically next greater permutation. If no such 
permutation exists, rearrange the numbers into the lowest 
possible order (i.e., sorted in ascending order). 

Note - A permutation of an array of integers refers to a 
specific arrangement of its elements in a sequence or linear order.

Input: arr = [2, 4, 1, 7, 5, 0]
Output: [2, 4, 5, 0, 1, 7]
*/

class Solution {
  void nextPermutation(List<int> arr) {
    int n = arr.length;
    int i = n - 2;

    // Step 1: Find the first decreasing element from the right
    while (i >= 0 && arr[i] >= arr[i + 1]) {
      i--;
    }

    if (i >= 0) {
      int j = n - 1;

      // Step 2: Find the element just greater than arr[i]
      while (arr[j] <= arr[i]) {
        j--;
      }

      // Step 3: Swap arr[i] and arr[j]
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }

    // Step 4: Reverse the subarray from i + 1 to end
    int left = i + 1;
    int right = n - 1;
    while (left < right) {
      int temp = arr[left];
      arr[left] = arr[right];
      arr[right] = temp;
      left++;
      right--;
    }
  }
}
