//overriden local variable
var globalVar = "This is a global variable";

var globalFunction = function(p1) {
    var lv = "This is a local variable";

    var lf = function() {
        var lv = "Hello world";
        alert(lv);
    }
    lf();
    alert(lv);
}

globalFunction(2);
