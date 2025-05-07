{
    var a = 1;
    let b = 2;
    const c = 3;
}
    
console.log(a,b,c);

/*
Will get a ReferenceError: b is not defined
var a = 1; → function-scoped (or global if not in a function), so a is accessible outside the block.
let b = 2; and const c = 3; are confined to the block
*/