/* Given an array of integers nums and an integer target, return indices of the 
two numbers such that they add up to target. 
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
*/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> numToIndex = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numToIndex.containsKey(complement)) {
        return [numToIndex[complement]!, i];
      }
      numToIndex[nums[i]] = i;
    }

    return [];
  }
}
