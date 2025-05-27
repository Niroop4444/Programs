function fizzBuzz(number) {
    const output = [];

    for (let i = 1; i <= number; i++) {
        if (i % 3 === 0 && i % 5 === 0) {
            output.push("FizzBuzz");
        } else if (i % 3 === 0) {
            output.push("Fizz");
        } else if (i % 5 === 0) {
            output.push("Buzz");
        } else {
            output.push(i);
        }
    }
    
    return output;
}

fizzBuzz(75);

fizzBuzzUsingWhile(75);

function fizzBuzzUsingWhile(number) {

    const output = [];
    let i = 1;

    while (i < number) {
        if (i % 3 === 0 && i % 5 === 0) {
            output.push("FizzBuzz");
        } else if (i % 3 === 0) {
            output.push("Fizz");
        } else if (i % 5 === 0) {
            output.push("Buzz");
        } else {
            output.push(i);
        }
        
        i++;
    }

    console.log("Output using while "+output);
    return output;
}