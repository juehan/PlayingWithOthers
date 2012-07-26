/*
control css style not by CSS but by Javascript
but don't do this as style must be put in CSS not in Javascript.

However, keep in mind Javascript can change current style whateve set in CSS.
*/

(function() {
    var divFoo = document.getElementById("foo"),
        style = divFoo.style;

    style.color = "blue";
    style.border = "1px solid black";
    style.backgroundColor = "yellow";
    style.padding = "2px";

    
} ());

