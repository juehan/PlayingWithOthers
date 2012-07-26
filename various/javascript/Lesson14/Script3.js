(function() {
    var divFoo = document.getElementById('foo'),
    style = divFoo.style;

    divFoo.className = "css-class css-class2";

    var color = window.getComputedStyle(divFoo, null).getPropertyValue('color'); //it will display RGB color value

    var color2 = divFoo.currentStyle['color']; //it will return 'red'

    var getStyle = function(el, cssProperty) {
        if(typeof getComputedStyle !== "undefined") {
            return window.getComputedStyle(el, null).getPropertyValue(cssProperty);
        } else {
            return el.currentStyle[cssProperty];
        }
    };
    var color3 = getStyle(divFoo, "color");

    alert(color);
    alert(color2);
    alert(color3);

} ());