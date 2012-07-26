
//pass function to function as a function param
var doSomething = function(p1, p2, fn){
    p1 = p1 + 3;
    p1 = p1 + 1;
    p1 = p1 * 8;

    return fn(p1,p2);
}

function sum(x1, x2) {
    return x1 + x2;
}

function diff(x1, x2){
    return x1 - x2;
}

var foo1 = doSomething(2,2, sum); //50

var bar1 = doSomething(3,2, diff);//54

//use of anonymous function as a function parameter as a value
var bar2 = doSomething(3, 2, function(p1, p2) {
    return p1 * p2;
}); 


alert(foo1);
alert(bar1);
alert(bar2);//112