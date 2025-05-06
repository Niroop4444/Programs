/*
Given an array arr[]. Rotate the array to the left 
(counter-clockwise direction) by d steps, where d is a positive integer. 

Note: Consider the array as circular.

Input: arr[] = [1, 2, 3, 4, 5], d = 2
Output: [3, 4, 5, 1, 2]
*/

class Solution {
   rotateArray(arr, d) {

    const n = arr.length;
    d = d % n;

    function reverseArray(start, end) {
        while (start < end) {
            [arr[start], arr[end]] = [arr[end], arr[start]];
            start++;
            end--;
        }
    }

    reverseArray(0, d -1);  // Reverse first d elements
    reverseArray(d, n - 1); // Reverse the rest
    reverseArray(0, n - 1); // Reverse the whole array

    return arr;
   }
}