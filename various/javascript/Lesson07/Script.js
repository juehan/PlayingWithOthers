/*
creat and use object.

Object
String
Number 
Boolean

These are object type and it starts with uppercase.
Every other object inherits from Object class
*/

var num = 8,
    str = num + "", //str is string "8".
    str2 = num.toString();

alert(str2);

var obj = new Object(); //create Object instance
var str3 = new String();//create String instance

var person = new Object(); //construct

person.firstName = "john";
person.lastName = "lee";

person.getFullName = function() {
    return person.firstName + " " + person.lastName;
}

alert(person.getFullName());

//use of this keyword
person.getFullName2 = function() {
    return this.firstName + " " + this.lastName;
}

alert(person.getFullName2());



/////////////////////////////////////////////////
//new way of doing above since 2000
/////////////////////////////////////////////////

var person2 = {
    firstName : "Michelle",
    lastName : "Ahn",
    getFullName : function(){
        return this.firstName + " " + this.lastName;
    }
};

alert(person2.getFullName());

