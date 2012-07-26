/*
Repeating code - loop
*/

var names = ["john", "lee", "michelle", "ahn"];

//one way
alert('first method');
for(var i = 0; i < names.length; i = i +1)
{
    alert(names[i]);
}

//this's also possible
alert('method second');
for(var j = 0, len = names.length; j < len; j = j +1)
{
    alert(names[j]);
}

alert('remove elements from array');

//while loop and array method pop
while(names.length > 0){
    var element = names.pop();
    alert(element); 
}
