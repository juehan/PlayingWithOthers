
var globalVar = "This is a global variable";

var globalFunction = function(p1) {
    var localVar = "This is a local variable";

    var localFunction = function(){
        var superLocalVar = "Hello world";
        alert(superLocalVar);
        alert(localVar);
        alert(p1);
        alert(globalVar);
    }
}

globalFunction(2);
