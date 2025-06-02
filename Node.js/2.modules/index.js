//importing the greeting function from the Greeting file
const greeting = require("./Greeting");

//importing the persons object from the persons file
const {person1, person2, person3, person4} = require("./persons");

console.log(greeting(person1));
console.log(greeting(person2));
console.log(greeting(person3)); 
console.log(greeting(person4));

