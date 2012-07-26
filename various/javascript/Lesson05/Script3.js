//we learn SCOPE in this lesson

/*
Scope: Determines the accessibility of code
Glogal scope is the default

Local(or functional) scope
*/


/*
To debug javascript in Chrome, press "Ctrl + shift + i"
*/
var globalVar = "This is a global variable";

var globalFunction = function() {
    var localFunction = function() {
        var superLocalVar = "hello World!";
        alert(superLocalVar);
    }
    localFunction();
    alert(superLocalVar);
}

globalFunction();

alert(superLocalVar);
alert(globalVar);