x = [20, 1, 3].sort()
/*
what is output and how?

Output -> [1, 20, 3]
Because .sort() in JavaScript by default sorts elements as strings, not numbers.
JavaScript converts elements to strings & compares
'20' comes before '3' because '2' < '3' (because it compares character by character, starting from the left.)
*/