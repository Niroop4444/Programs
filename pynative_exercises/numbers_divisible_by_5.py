def numbers_divisible_by_5(nums):
   numbers_divisible_by_5 = [num for num in nums if num % 5 == 0]
   return numbers_divisible_by_5

print(numbers_divisible_by_5([10, 20, 33, 46, 55]))