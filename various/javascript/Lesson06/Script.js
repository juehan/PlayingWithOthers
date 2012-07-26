//working with object
/*
Object
properties: data related to the object.
method: actions that do something with the object or its data.
*/

var obj = "This is a string object."; //string is a object

var length = obj.length; //24
var i1 = obj.indexOf("T"); //0
var i2 = obj.indexOf("is"); //2

alert(i1);
alert(i2);

var i3 = obj.indexOf("is", i2+1); //can specify starting position
alert(i3); //5

//if it can't find, it will return -1
var i4 = obj.indexOf("this"); //-1
alert(i4);


var i5 = obj.lastIndexOf("is");
alert(i5); //5

//substring

var i6 = obj.substr(0, 4); //parameter is start, end
alert(i6);//"This"

var i7 = obj.substr(10, 6);//parameter is start, end
alert(i7);//"string"

var i8 = obj.substring(0, 4); //parameter is start, end
alert(i8); //"This"

//replace
var r1 = obj.replace("object", "value"); //replace 1st param with 2nd
alert(r1);
alert(obj); //original object does not change


//to uppercase and lowercase
var upper = obj.toUpperCase();
alert(upper);

var lower = obj.toLowerCase();
alert(lower);

alert(obj); //but again, original object remain same




