//we learn SCOPE in this lesson

/*
Scope: Determines the accessibility of code
Glogal scope is the default

Local(or functional) scope
*/

var globalVar = "This is a global variable";

var globalFunction = function() {
    var localVar = "This is a local variable";
    alert(localVar);
    globalVar = "Value has been modified";
}

globalFunction();

alert(localVar);
alert(globalVar);