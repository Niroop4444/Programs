function bottlesbeer(number) {
    let i = i;

    while (i < number) {
        console.log(number +"bottles of beer on the wall,"+number+" bottles of beer.");
        if (i != number - 1) {
            console.log("Take one down and pass it around, "+number+" bottles of beer on the wall.");
        } else {
            console.log("Take one down and pass it around, no more bottles of beer on the wall.");
        }

        
    number--;
    }

    console.log("No more bottles of beer on the wall, no more bottles of beer\nGo to the store and buy some more, "+number+" bottles of beer on the wall");

}

bottlesbeer(99);