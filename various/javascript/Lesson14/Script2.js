
//Inside javascript, you can specify name of the css class naming using className attribute
// that className must be set in html page  


(function() {
    var divFoo = document.getElementById("foo"),
    style = divFoo.style;

    divFoo.className = "css-class css-class2"; //we can apply multiple css class
    alert(style.color);

} ());


//other methods are

//in class is replace.
//divFoo.classList.toggle