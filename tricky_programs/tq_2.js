for (var i = 0; i < 3; i++) {
    setTimeout(() => console.log(i), 1000);
}

/*
Output is 3 3 3 -> var is function-scoped, not block-scoped. 
When setTimeout executes its callback after 1 second, the loop has already completed and i is now 3.

If 
for (let i = 0; i < 3; i++) {
  setTimeout(() => console.log(i), 1000);
}
Output is 0 1 2 -> let is block-scoped, so each iteration of the loop captures its own i.
*/
