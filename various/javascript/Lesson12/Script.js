/*
We will learn document object (just beneath window object)

Document object ==> DOM

*/
alert("getElementByTagName-->");

(function() {
    var pElements = document.getElementsByTagName("p"); //it will return NodeList which is not Javascript array object but DOM object type.
    var lastPElement = pElements[pElements.length - 1];
    alert(pElements.length);

    for(var i = 0, len = pElements.length; i < len; i = i + 1) {
        alert(pElements[i]);
    }

} ());

alert("getElementById-->");

(function() {
    var pElement = document.getElementById("foo");
    alert(pElement);
} ());



alert("getElementById find error-->");

(function() {
    var pElement = document.getElementById("foo1");

    if(pElement === null)
    {
        alert("not found");
    }
    else
    {
        alert(pElement);    
    }
    
} ());

alert("using CSS query-->");

(function() {
    var pElement = document.querySelector('p'); //find the first p 
    alert(pElement.parentNode); //get parent node of p element

    
} ());

alert("using CSS query2-->");

(function() {
    var pElement = document.querySelectorAll('p'); //select all p elements 
    alert(pElement.length);
    
} ());

alert("using CSS query3-->");

(function() {
    var pElement = document.querySelectorAll('div p'); //select all p elements 
    alert(pElement.length);
    
} ()); 


alert("using CSS query4-->");

(function() {
    var pElement = document.querySelector('#foo'); //select all p elements 
    alert(pElement.parentNode.tagName);
    
} ());

