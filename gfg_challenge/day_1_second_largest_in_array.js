/*Given an array of positive integers arr[], return the second largest element from the array. If the second largest element doesn't exist then return -1.

Note: The second largest element should not be equal to the largest element.*/

class Solution {
    getSecondLargest(arr) {
        
        const unique = Array.from(new Set(arr)); // Remove duplicates
        if (unique.length < 2) return -1;
        
        unique.sort((a,b) => b - a); // Sort in descending order
        return unique[1] ?? -1; // Return second largest or -1
    }
}