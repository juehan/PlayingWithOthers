//function

var foo = 2 + 3; //5
foo = foo + 1; //6
foo = foo * 8; //48


var bar = 3 + 3; //6
bar = bar + 1; //7
bar = bar * 8; //56


var foo1 = doSomething(2);

var bar1 = doSomething(3);

function doSomething(p1){
    p1 = p1 + 3;
    p1 = p1 + 1;
    p1 = p1 * 8;

    return p1;
}

alert(foo1);
alert(bar1);