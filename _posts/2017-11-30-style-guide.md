---
layout: post
cover: 'assets/images/shiva.jpg'
title: Style Guide
date: 2017-11-30 04:00:00
tags: guide
author: Author
---

<p>This shows how you can use html styling to achieve your hopes.</p>


<p>Below is just about everything you’ll need to style in the theme. Check the source code to see the many embedded elements within paragraphs.</p>


<hr />

<h1 id="heading1">Heading 1</h1>

<h2 id="heading2">Heading 2</h2>

<h3 id="heading3">Heading 3</h3>

<h4 id="heading4">Heading 4</h4>

<h5 id="heading5">Heading 5</h5>

<h6 id="heading6">Heading 6</h6>

<hr />

<p>Lorem ipsum dolor sit amet, <a title="test link" href="#">test link</a> adipiscing elit. <strong>This is strong.</strong> Nullam dignissim convallis est. Quisque aliquam. <em>This is emphasized.</em> Donec faucibus. Nunc iaculis suscipit dui. 5<sup>3</sup> = 125. Water is H<sub>2</sub>O. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. <cite>The New York Times</cite> (That’s a citation). Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.</p>

<p><abbr title="Hyper Text Markup Language">HTML</abbr> and <abbr title="Cascading Style Sheets">CSS</abbr> are our tools. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.  Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. To copy a file type <code>COPY <var>filename</var></code>. <del>Dinner’s at 5:00.</del> <ins>Let’s make that 7.</ins></p>

<hr />

<h2 id="media">Media</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>

<h3 id="image">Image</h3>

<amp-img src="{{ site.baseurl }}assets/images/shiva.jpg" width="656" height="400" layout="responsive" alt="" class="mb3"></amp-img>

<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>

<hr />

<h2 id="listtypes">List Types</h2>

<h3>Definition List</h3>


Definition List Title
: This is a definition list division.


Definition
: An exact statement or description of the nature, scope, or meaning of something: **our definition of what constitutes poetry.**


<h3>Ordered List</h3>

<ol>
<li>List Item 1  </li>
<li>List Item 2 <br />
<ol><li>Nested list item A</li>
<li>Nested list item B</li></ol></li>
<li>List Item 3</li>
</ol>

<h3>Unordered List</h3>

<ul>
<li>List Item 1</li>
<li>List Item 2
<ul><li>Nested list item A</li>
<li>Nested list item B</li></ul></li>
<li>List Item 3</li>
</ul>

<hr />

<h2>Preformatted Text</h2>

<p>Typographically, preformatted text is not the same thing as code. Sometimes, a faithful execution of the text requires preformatted text that may not have anything to do with code. Most browsers use Courier and that’s a good default — with one slight adjustment, Courier 10 Pitch over regular Courier for Linux users.</p>

<h3 id="code">Code</h3>

<p>Code can be presented inline, like <code>&lt;?php bloginfo('stylesheet_url'); ?&gt;</code>, or within a <code>&lt;pre&gt;</code> block. Because we have more specific typographic needs for code, we’ll specify Consolas and Monaco ahead of the browser-defined monospace font.</p>

<p>Code blocks can also be inserted with the highlight tag as below:</p>
<pre>
    {% raw %}
    {% highlight language-x %}
    # some code
    {% endhighlight %}
    {% endraw %}
</pre>

<p>More information about code highlighting in jekyll can be found  <a href="https://jekyllrb.com/docs/templates/#code-snippet-highlighting">in Jekyll documentation</a>.</p>

<p>These area a couple of examples showing the resulting highlighted code:</p>

{% highlight css %}
/* css code sample */
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
{% endhighlight %}


{% highlight javascript %}
// javascript code sample
$.ajax({
  type: 'POST',
  url: 'backend.php',
  data: "q="+myform.serialize(),
  success: function(data){
    // on success use return data here
  },
  error: function(xhr, type, exception) {
    // if ajax fails display error alert
    alert("ajax error response type "+type);
  }
});
{% endhighlight %}

<p>Now you can also use <a href="https://highlightjs.org/">highlight.js</a>.
For more on how to use it and on the available styles check their
<a href="https://highlightjs.org/static/demo/">demo</a> and
<a href="http://highlightjs.readthedocs.org/en/latest/">documentation</a> pages.</p>

<div class="system">
<pre><code class="swift">// Swift code sample
import Foundation

@objc class Person: Entity {
  var name: String!
  var age:  Int!

  init(name: String, age: Int) {
    /* /* ... */ */
  }

  // Return a descriptive string for this person
  func description(offset: Int = 0) -> String {
    return "\(name) is \(age + offset) years old"
  }
}
</code></pre>
</div>


<hr />

<h2 id="blockquotes">Blockquotes</h2>

<p>Let’s keep it simple. Italics are good to help set it off from the body text. Be sure to style the citation.</p>

<blockquote>
  <p>Good afternoon, gentlemen. I am a HAL 9000 computer. I became operational at the H.A.L. plant in Urbana, Illinois on the 12th of January 1992. My instructor was Mr. Langley, and he taught me to sing a song. If you’d like to hear it I can sing it for you. <cite>— <a href="http://en.wikipedia.org/wiki/HAL_9000">HAL 9000</a></cite></p>
</blockquote>

<p>And here’s a bit of trailing text.</p>

<hr />

<h2 id="textlevelsemantics">Text-level semantics</h2>

<p>The <a href="#">a element</a> example <br />
The <abbr>abbr element</abbr> and <abbr title="Title text">abbr element with title</abbr> examples <br />
The <b>b element</b> example <br />
The <cite>cite element</cite> example <br />
The <code>code element</code> example <br />
The <del>del element</del> example <br />
The <dfn>dfn element</dfn> and <dfn title="Title text">dfn element with title</dfn> examples <br />
The <em>em element</em> example <br />
The <i>i element</i> example <br />
The <ins>ins element</ins> example <br />
The <kbd>kbd element</kbd> example <br />
The <mark>mark element</mark> example <br />
The <q>q element <q>inside</q> a q element</q> example <br />
The <s>s element</s> example <br />
The <samp>samp element</samp> example <br />
The <small>small element</small> example <br />
The <span>span element</span> example <br />
The <strong>strong element</strong> example <br />
The <sub>sub element</sub> example <br />
The <sup>sup element</sup> example <br />
The <var>var element</var> example <br />
The <u>u element</u> example</p>

<hr />

<h2 id="forms">Forms</h2>

<form action="post" action-xhr="https://example.com/subscribe" target="_top">
<fieldset>
<legend>Inputs as descendents of labels (form legend)</legend>
<label>
<b>Text input</b>
<input type="text" value="default value">
</label>
<label>
<b>Email input</b>
<input type="email">
</label>
<label>
<b>Search input</b>
<input type="search">
</label>
<label>
<b>Tel input</b>
<input type="tel">
</label>
<label>
<b>URL input</b>
<input type="url" placeholder="http://">
</label>
<label>
<b>Password input</b>
<input type="text" value="password">
</label>
<label>
<b>Radio input</b>
<input type="radio" name="rad">
</label>
<label>
<b>Checkbox input</b>
<input type="checkbox">
</label>
<label>
<input type="radio" name="rad"> Radio input
</label>
<label>
<input type="checkbox"> Checkbox input
</label>
<label>
<b>Select field</b>
<select>
<option>Option 01</option>
<option>Option 02</option>
</select>
</label>
<label>
<b>Textarea</b>
<textarea cols="30" rows="5" >Textarea text</textarea>
</label>
</fieldset>
</form>

<hr />

<h2 id="embeds">Embeds</h2>

<p>Sometimes all you want to do is embed a little love from another location and set your post alive.</p>

<h3 id="video">Video</h3>

<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<amp-youtube width="480"
  height="270"
  layout="responsive"
  data-videoid="lBTCB7yLs8Y">
</amp-youtube>
