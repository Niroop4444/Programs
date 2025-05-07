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


    nextPermutation(arr) {
        let n = arr.length;
        let i = n - 2;

        // Find the first decreasing element from the right
        while (i >= 0 && arr[i] >= arr[i + 1]) {
            i--;
        }

        if (i >=0 ) {
            // Find the next larger element to the right of arr[i]
            let j = n - 1;
            while (arr[j] <= arr[i]) {
                j--;
            }

            // Swap arr[i] and arr[j]
            [arr[i], arr[j]] = [arr[j], arr[i]];
        }

        // Reverse the subarray from i+1 to end
        let left = i + 1
        let right = n - 1;
        while (left < right) {
            [arr[left], arr[right]] = [arr[right], arr[left]];
            left++;
            right--;
        }
        console.log(arr);
        return arr;
    }
    
}
