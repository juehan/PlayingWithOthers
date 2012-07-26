/*

Array

*/

var arr = new Array(); //empty array contain any number of and any types of items

var foo = new Array(11, "hello", true);
var length = foo.length;

var value = foo[0] //retrieving value using index

foo[0] = 12;//we can change the value in array
foo[1] = 13;
//we now have 12, 13, true

/////////////////////////////////////////////////
//above syntax is old school way
/////////////////////////////////////////////////


var foo2 = [11, "hello", true];
var value2 = foo[0];
//same goes here

foo2[3] = 15; //we can add more item as the array dynamically grows
foo2[4] = "whatever";

//append at the last
foo2[foo2.length] = "a new value";
foo2[foo2.length] = "a new value";
foo2[foo2.length] = "a new value";
foo2[foo2.length] = "a new value";
foo2[foo2.length] = "a new value";

//new way to do above
foo2.push("a brand new value");


//concat
var names = ["john", "lee"],
    names2 = ["michell", "ahn"];

var people = names.concat(names2);
alert(people);//john,lee,michell,ahn


//join
var names3 = ["john", "lee"],
    names4 = ["michell", "ahn"];

var people2 = names3.concat(names4);
var joined = people2.join(" ");
alert(joined); //john lee michell ahn

//reverse
var reversed = people.reverse();
alert(reversed);//ahn,michell,lee,john

//sort
var sorted = people.sort(); //sort by alphabetic order (browser dependent function)
alert(sorted);//ahn,john,lee,michell
