## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.
The layout of the site is dominated by own big table. The table is used to structure the site and to define layout. Tables however should only be used for tabular data. A orderd list would have been a cleaner and more readable solution. Furthermore, although you can create layouts with tables, you should not do it. The problem is that such a implementation makes layout changes very difficult: each page's table and layout has to be changed/ updated individually. Using CSS for your the layout design is the much better, faster and a cleaner solution.<br>
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? If I read it correctly they used 'id = num' to identify individual authors (each id has a specific num) and  'id = score_num' to identify this author's points (reader rates). However id is not used in the CSS stylesheet to define individual layouts for each author (they are all displayed the same way on the page) but it is a parameter in the Javascript function "byID". The rule of thumb is to use the tag id to define something unique, like the footer. If you need to define multiple objects, you should group them in the tag 'class'.<br>

Did you like the way they used HTML tags?  Please use examples with your arguments.
Because of the table dominated structure, the html is dominated by the tags 'tr' (table row) and 'td' (table data). Also, layout definitions (style) are added into the html. As a result, it is not easy to read nor to get a quick overview of the page's structure. Structuring the 'body' with the tags 'div', 'header' or 'h1'/ 'h2', 'ol' and to include a tag 'footer' would improve the html's readability. I understand that 'header' or 'footer' are html5 tags and the page wasn't yet updated to the latest html standard. <br>
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.
They did both, you see examples of:
<pre>
inline layout: 'style' like 'td style="width:18px;padding-right:4px"' 
layout definitions in CSS:  class '.pagetop', URL's like 'a:hover' and a font definition for the whole 'body'
</pre><br>

4) Did the authors include anything you didn't immediately understand? 
If so, what?
I read through the html first and wasn't sure about how they used 'id'. After going through the html and up again to read the the included JavaScript, I understood that 'id' is used as argument for the JavaScript function: 

```
function byId(id) {
    return document.getElementById(id);
  }
```

I looked up the 'get' method and the tag 'input' they used to create the "Search" field at the bottom. 

```
 <form method=get action="//hn.algolia.com/">Search: 
    <input type=text name="q" value="" size=17>
 </form>
```
The link '//hn.algolia.com' is where the form (input) will be sent;<br>  
the tag 'input' creates the field where input will be entered;<br>

 
5) How did the authors organize the CSS file? Was it DRY?
Almost all content is defined to have the font-family 'Verdana' and -size "10px"; This was defined in the first selector 'body' already and there was no need to repeat it.<br>  
 
6) Did the authors incorporate any responsive design into the site?
They did not define any value in percentage; all CSS selectors define its properties, inlcuding width, padding or margin, in px; In contrast, percentage values would allow a page for a relative adjustment of its different elements depending on the screen size.<br> 
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?
I was not a fan of tables and this page's html did not change that, to the contrary. I am glad we can use with html5 witch offers some additional tags to structure your page effectively. I believe the page's layout hasn't changed for a while, and after seeing how intervened their page structure (html) and its design (especially the amount of inline style definitions), I guess I know why. 


## REFLECTION
The challenge was a great way to recap html and css best practices, including responsive design. 

What questions did you have while coding? What resources did you find to help you answer them?
decompressing html and css:
<a href="http://www.textfixer.com/html/uncompress-html-code.php">HTML</a><br>
<a href="http://www.codebeautifier.com/">CSS</a><br>
<a href="https://github.com/akalongman/sublimetext-codeformatter">GitHub</a><br>

<a href="http://www.w3schools.com/tags/att_form_method.asp">HTML - Submit a form using the "get" method</a>

```
<form action="demo_form.asp" method="get">
  First name: <input type="text" name="fname"><br>
  Last name: <input type="text" name="lname"><br>
  <input type="submit" value="Submit">
</form>

```

How confident are you with each of the Learning Competencies? confident, but I'll read more about improving structure, especially structuring my CSS.
