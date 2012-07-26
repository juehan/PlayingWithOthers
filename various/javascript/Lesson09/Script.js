/*
condition control flow
*/
var foo = 5 < 6;
alert(foo); //true

var foo2 = 6 <= 6;
alert(foo2); //true

var foo3 = 6==6;
alert(foo3); //true

var foo4 = 6 != 6;
alert(foo4); //false

var foo5 = "6" == 6;
alert(foo5);//true as it convert to same type and compare it.

var foo6 = "6" === 6; //identity operator
alert(foo6); //false as it checks type

var foo7 = "6" !== 6; //non-identity operator
alert(foo7); //true as it checks type

var foo8 = 6===6;
alert(foo8); //true

var foo9 = "hello" === "Hello" //false


//if statement

if(5 < 6){
    alert("5 is less than 6");
} else {
    alert("t is not less than 6");
}

alert("this is the outside of the if statement");


var f1 = "hello",
    b1 = 5;

//logical AND && (single & is bitwise AND)

//true && true = true
//true && false = false
//false && false = false
//false && false = false

if(f1 === 'hello' && b1 < 6) {
    alert('true'); //true
}

//logical OR || (single | is bitwise OR)
//true || true = true
//true || false = true
//false || false = true
//false || false = false

if(f1 === 'hello' || b1 < 6) {
    alert('true'); //true
}

//logical NOT ! 
//!true = false
//!false = true

if(!(f1 !== 'hello')){
    alert("true");//true
}


if(0) //false
{
    alert('hi');
}

if(1) //it can be any number other than 0
{
    alert('hi');
}

if(" ") //any single chracter is evaluated as true
{
    alert('hi');
}

if([]) //array is evaluated as true
{
    alert('hi');
}

if({}) //object is evaluated as true
{
    alert('hi');
}

if(" ")
{
    alert('hi');
}

if(null) //null is object and it evaluated as false
{
    alert('hi');
}