def first_last_same(nums):
   if nums[0] == nums[-1]:
      return True
   else:
      return False

print(first_last_same([50, 20, 30, 40, 50]))
print(first_last_same([75, 65, 75, 35, 30]))