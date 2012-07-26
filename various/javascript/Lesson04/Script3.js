
//this must be appear beforehand of its use
var doSomething = function(p1, p2){
    p1 = p1 + 3;
    p1 = p1 + 1;
    p1 = p1 * 8;

    return p1*p2;
}

var foo1 = doSomething(2,2); //96

var bar1 = doSomething(3,2);//112
//anonymous function and assign it into variable


alert(foo1);
alert(bar1);