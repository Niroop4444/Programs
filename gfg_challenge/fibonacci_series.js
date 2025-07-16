/*
The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, 
such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

F(0) = 0, F(1) = 1
F(n) = F(n - 1) + F(n - 2), for n > 1.
Given n, calculate F(n).
*/

var fib = function(n) {
    if (n === 0) { 
        return 0;
    } else if (n === 1) {
        return 1;
    }

    let startNumber = 0;
    let secondNumber = 1;
    let recentNumber;
    
    for (let i = 2; i <= n; i++) {
        recentNumber = startNumber + secondNumber;
        startNumber = secondNumber;
        secondNumber = recentNumber;
    }

    return recentNumber;
};

/*
Fibonacci was an Italian mathematician who came up with the Fibonacci sequence:
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...
Where every number is the sum of the two previous ones.

Create a function where you can call it by writing the code:
fibonacciGenerator (n)

Where n is the number of items in the sequence.
So I should be able to call:
fibonacciGenerator(3) and get [0,1,1] as the output.
*/

function fibonacciGenerator(n) {
    let fibonacciSeries = [];

    if (n === 0) {
        return '';
    } else if (n === 1) {
        return '0';
    }

    fibonacciSeries.push(0, 1);

    for (let i = 2; i < n; i++) {
        let recentNumber = fibonacciSeries[i - 1] + fibonacciSeries[i - 2];
        fibonacciSeries.push(recentNumber);
    }

    return fibonacciSeries.join(',');
}

fibonacciGenerator(3);