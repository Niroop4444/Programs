/*
Write a generator function that returns a generator 
object which yields the fibonacci sequence.
*/

var fibonacciGenerator = function*() {
    let a = 0; b = 1;
    while(true) {
        yield a;
        [a, b] = [b, a + b];
    }
}