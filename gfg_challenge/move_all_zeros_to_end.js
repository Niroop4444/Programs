/*
You are given an array arr[] of non-negative integers. 
Your task is to move all the zeros in the array to the 
right end while maintaining the relative order of the non-zero elements. 
The operation must be performed in place, meaning you should not use extra space for another array.

Input: arr[] = [1, 2, 0, 4, 3, 0, 5, 0]
Output: [1, 2, 4, 3, 5, 0, 0, 0]
*/

class Solution {
    pushZerosToEnd(arr) {
        let lastNonZeroIndex = 0;

        // First pass: move all non-zero elements to the front
        for (let i = 0; i < arr.length; i++) {
            if (arr[i] != 0) {
                arr[lastNonZeroIndex] = arr[i];
                lastNonZeroIndex++;
            }
        }

        // Second pass: fill the remaining elements with zeros
        for (let i = lastNonZeroIndex; i < arr.length; i++) {
            arr[i] = 0;
        }
    }
}