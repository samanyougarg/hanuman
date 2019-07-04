---
layout: default
pagination: 
  enabled: true
---


  <figure class="ampstart-image-fullpage-hero m0 relative mb4">
    <amp-img width="404" height="720" alt="Cover" layout="responsive" src="{{ site.baseurl }}{{ site.cover }}" media="(max-width: 415px)"></amp-img>
    <amp-img height="720" alt="Cover" layout="fixed-height" src="{{ site.baseurl }}{{ site.cover }}" media="(min-width: 416px)"></amp-img>
    <figcaption class="absolute top-0 right-0 bottom-0 left-0">
      <header class="p3">
        <h1 class="ampstart-fullpage-hero-heading mb0 hanuman">
          <span class="ampstart-fullpage-hero-heading-text title">
            {{ site.title }}
          </span>
        </h1>
        <h2 class="ampstart-fullpage-hero-heading mb0">
          <span class="ampstart-fullpage-hero-heading-text description">
            {{ site.description }}
          </span>
        </h2>
    </header>
    {% if site.cover %}
    <footer class="absolute left-0 right-0 bottom-0">
      <a class="ampstart-readmore py3 caps line-height-2 text-decoration-none center block h5" href="#content"><span class="ampstart-readmore-text px1">Read more</span></a>
    </footer>
    {% else %}
    <footer class="absolute left-0 right-0 bottom-0">
      <a class="ampstart-read py3 caps line-height-2 text-decoration-none center block h5" href="#content"><span class="ampstart-readmore-text px1">Read more</span></a>
    </footer>
    {% endif %}
    </figcaption>
  </figure>

<main id="content" role="main" class="content">

  <div class="cf frame">
    {% for post in paginator.posts %}
      <article class="post" itemscope itemtype="http://schema.org/BlogPosting" role="article">
        <div class="article-item">
          <header class="post-header">
            <h2 class="post-title" itemprop="name"><a href="{{ site.baseurl }}{{ post.url | remove: '/'}}" itemprop="url">{{ post.title }}</a></h2>
          </header>
          <section class="post-excerpt" itemprop="description">
            <p class="post-description">{{ post.excerpt | strip_html | truncatewords: 50 }}</p>
          </section>
          <div class="post-meta">
            {% for author in site.data.authors %}
              {% if author[1].username == post.author %}
                {% if author[1].assets %}<amp-img width="24" height="24" class="author-thumb" layout="responsive" src="{{ site.baseurl }}{{author[1].assets}}" alt="{{author[1].name}}"/></amp-img>{% endif %}
                <a href="{{site.baseurl}}authors/#{{author[1].username}}">{{author[1].name}}</a>
              {% endif %}
            {% endfor %}

            {% if post.tags.size > 0 %}
                in
                {% for tag in post.tags %}
                    {% if forloop.index == post.tags.size %}
                       <a href='{{site.baseurl}}tags/#{{tag}}'>{{ tag | capitalize }}</a>
                    {% else %}
                       <a href='{{site.baseurl}}tags/#{{tag}}'>{{ tag | capitalize }}</a>,
                    {% endif %}
                {% endfor %}
            {% endif %}
              <time class="post-date" datetime="{{ post.date | date:'%Y-%m-%d' }}">{{ post.date | date_to_string }}</time>
          </div>
        </div>
      </article>
    {% endfor %}
  </div>

  <nav class="pagination" role="navigation">
    {% if paginator.next_page %}
      <a class="newer-posts" href="{{ site.baseurl }}/page{{paginator.next_page}}">&larr; Older posts</a>
    {% else %}
      <a class="newer-posts disabled">&larr; Older posts</a>
    {% endif %}
    <span class="page-number">Page {{ paginator.page }} of {{ paginator.total_pages }}</span>
    {% if paginator.previous_page %}
      {% if paginator.page == 2 %}
        <a class="older-posts" href="{{ site.baseurl }}/">Newer posts &rarr;</a>
      {% else %}
        <a class="older-posts" href="{{ site.baseurl }}/page{{paginator.previous_page}}">Newer posts &rarr;</a>
      {% endif %}
    {% else %}
      <a class="older-posts disabled">Newer posts &rarr;</a>
    {% endif %}
  </nav>

</main>

{% include footer.html %}
