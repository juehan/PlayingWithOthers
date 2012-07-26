var foo = "hello, window";

alert(window.foo); //window means global object and foo variable belongs to window. but we just can simply call foo instead of window.foo

var bar = function() {
    var foo = "hello, function";
    alert(foo); //this is local foo
    alert(window.foo); //this is global foo
}

bar();

//invoking function immediately
//this is good practice when you have to deal with 3rd party lib which might contain same variable which also can incur naming conflict
alert('invoking function immediately ---->');
(function(){
    var foo = "hello, window";

    var bar = function() {
        var foo = "hello, function";
        alert(foo); //this is local foo
        alert(window.foo); //this is global foo
    }
    bar();
}());

//Confirm window and if & else statement
alert('confirm -->');
(function(){
   if(confirm('Do you want to go to Google.com? (Why not?)')){
       alert('We will take you there');
    }else{
       alert('You stay here');        
   }   
}());



//Confirm window and if & else statement
alert('confirm2 -->');
(function(){

    var href = window.location; //you also can use only 'location' instead of 'window.location'
    alert(href);

   if(confirm('Do you want to go to Google.com? (Why not?)')){
       window.location = "http://www.google.com"; //it will redirect your browser to the google.com
    }else{
       alert('You stay here');        
   }   
}());