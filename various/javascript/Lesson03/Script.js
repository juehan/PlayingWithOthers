
var sum  = 4 + 5; // + is addition operator

//single line comment

/*
multiline comment
....
*/

var diff = 4 - 5; //subtract operator

//this is also possible in javascript but it's not good for readibility.
var sum2 = 4 + 5,//9
    diff2 = 4 - 5, //-1
    product = 4 * 5, //20
    quotient = 4 / 5; //.8 

var foo = 4+5*6-8;//26 //multiply is processed first and left-to-right order as normal math

var foo2 = 4 - 5 * (6 - 8), //14
    bar = foo2 + 1; //15

var foo3 = "Hello" + ", "+ "World!"; //concatenation

var foo4 = 4 + 5 + "7"; //number converted to string //97 --> this is string not number

var foo5 = "7" + 6 + 5; //left to right order. it becomes 76 (string) and then 765 (string)

var foo6 = 4 + 5 + "7" + 6 + 5; //"9765"

var foo7 = parseInt("34", 10); //34 as a base 10 number system

var foo8 = parseInt("34s57", 10); //34 as it hit non-numeric value and stopped to parse

var foo9 = parseInt(3.14, 10);  //3

var foo10 = parseFloat("3.14", 10); //3.14 

var foo11 = parseFloat(3.14, 10); //3.14 

