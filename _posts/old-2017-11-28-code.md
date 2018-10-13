---
layout: post
title: Code
date: 2017-11-28 04:00:00
tags: code
author: krishna
---

<p>Code can be presented inline, like <code>&lt;?php bloginfo('stylesheet_url'); ?&gt;</code>, or within a <code>``` ```</code> block.</p>

<p>More information about code highlighting in jekyll can be found  <a href="https://jekyllrb.com/docs/templates/#code-snippet-highlighting">in Jekyll documentation</a>.</p>

<p>These area a couple of examples showing the resulting highlighted code:</p>

```css
// css code sample
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
```


```javascript
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
```
