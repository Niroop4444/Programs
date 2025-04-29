const arr = [1, 2, 3]
arr[10] = 99
console.log(arr.length)

/*
Initially, arr has 3 elements: [1, 2, 3], so arr.length is 3.
Then, arr[10] = 99 sets the value at index 10 (the 11th position).
JavaScript arrays are sparse, meaning the elements between index 3 and 9 are not explicitly set—they remain undefined.
Assigning a value to a higher index automatically updates the array’s length to that index + 1.
So the array now looks like: [1, 2, 3, <7 empty items>, 99]
*/