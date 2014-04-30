$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
  var bodyElement = $('body');
  var allElements = $('*');
  var headlineElement = $('h1');
  var classElement = $('.mascot');  
  var elementOfClass = $('div.mascot'); /* selects all <div> elements with class="mascot"*/
  var allBodyElements = $('div','h1'); /* select all <div> and <h1> elements
 /*not in DOM: 
 id ="test"
 var idElement = $('#test') => add # for id's

 id ="test.two"
 var idElement = $('#test\\.two') => escape dot (.) and/or !"#$%&'()*+,./:;<=>?@[\]^`{|}~ with backslash backslash \\

 attribute href=""
 var elementWithAttribut = $('[href]') => add []

 additional info:
 http://www.w3schools.com/jquery/jquery_ref_selectors.asp
 http://learn.jquery.com/about-jquery/
 https://api.jquery.com/category/selectors/
 */
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 /* one by one:
 $('h1').css("color", "red");*/

 /* set multiple css properties with css method:*/
 $('h1').css({"color":"red", "border":"solid black 1px", "visibility":"visible"});
 $('h1:last').html("Fence Lizards"); /*:last -- matches the last element in the list of matches*/

 /*additional info
 http://www.w3schools.com/jquery/jquery_css.asp
 http://www.w3schools.com/jquery/html_html.asp
 */


//RELEASE 3: Event Listener
  // Add the code for the event listener here 

$('img').on('mouseover', function(e){
	e.preventDefault()
	$(this).attr('src', 'http://upload.wikimedia.org/wikipedia/commons/f/f3/Sceloporus_occidentalis_08290.JPG')
})

 
$('img').on('click', function(){
	$(this).attr('src','dbc_logo.jpg')
}) 
//RELEASE 4 : Experiment on your own
 
 
 $('img').animate({'width': '100%'}, 'slow'); /*The strings 'fast' and 'slow' can be supplied to indicate durations of 200 and 600 milliseconds, respectively.
											Higher values indicate slower animations*/

$('h1').animate({'font-size':'12px'}, 'slow');
 
 /*more info
 http://api.jquery.com/animate/
 */
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
