//we learn SCOPE in this lesson

/*
Scope: Determines the accessibility of code
Glogal scope is the default

Local(or functional) scope
*/

var globalVar = "This is a global variable";

var globalFunction = function() {
    alert(globalVar);
    globalVar = "Value has been modified";
}

globalFunction();
alert(globalVar);