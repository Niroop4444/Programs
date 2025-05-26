prompt("What is your name?");
prompt("What is your love name?");
var loveScore = Math.random() * 100;
loveScore = Math.floor(loveScore) + 1;
alert("Your love score is "+loveScore+"%");

/*
This is a random love score generation code
Math.random() generates a random number between 0 and just under 1 & Returns a random integer from 0 to 99:
Math.floor(loveScore) rounds down the floating number to the nearest whole number. (Math.floor(73.42) -> 73)
*/