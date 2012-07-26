(function() {

    var pElements = document.getElementsByTagName('p');
    alert(pElements.length); //5

    var el = document.createElement('p');
    document.body.appendChild(el);
    alert(pElements.length);//6 -> it's updated lively.

} ());


(function() {

    var pElements = document.querySelectorAll('p');
    alert(pElements.length); //5

    var el = document.createElement('p');
    document.body.appendChild(el);
    pElements = document.querySelectorAll('p'); //in case you use CSS query, you need to call again to update manually.

    alert(pElements.length);//6

} ());


//update html using javascript, but it does not modify html file itself.
(function() {
    var doc = document, //this will increase javascript engine faster working than before as it will look for document object one time.
    el = doc.createElement('p'),
    content = doc.createTextNode('<strong>This was dynamically created</strong>');

    el.appendChild(content);
    el.setAttribute('align', 'center');
    doc.body.appendChild(el);

} ());


//when using DOM, be mindful that it can impact the browser performance as it is naturally slow.


//remove and change content of the html

(function(){
    var doc = document,
        el = doc.createElement('p'),
        pFoo = doc.getElementById('foo');

    //innerHTML is a good way to directly modify the content of the HTML
    el.innerHTML = '<strong>This is dynamically created, AGAIN!!</strong>';
    el.id = 'bar';

    pFoo.parentNode.replaceChild(el, pFoo);
    
}());