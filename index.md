---
layout: page
title: Fedir's blog
tagline: Supporting tagline
---
{% include JB/setup %}
{% assign teasers = site.posts %}
{% assign teasers_take = 3 %}

Hi, I'm Fedir RYKHTIK, Open Source Web Developer from Toulon, France.

I'm making sites with Open Source techologies, as Drupal, TYPO3, Wordpress, CodeIgniter, Magento.

Full CV You could find on [Linkedin](http://www.linkedin.com/pub/fedir-rykhtik/14/64/a84).

* * *

That's some articles I would like to share with You :

{% for teaser in teasers limit:teasers_take %}
  <h3><a href="{{ teaser.url }}">{{ teaser.title }}</a></h3>
  <div class="date">{{teaser.date | date: "%A %b %d, %Y"}}</div>
  <div class="content">
    {% if teaser.teaser %}
      {{ teaser.teaser }}
    {% else %}
      {{ teaser.content | strip_html | truncatewords: 25 }}
    {% endif %}
  </div>
{% endfor %}

* * *
All posts on my blog :

{% for post in site.posts %}
  {{ post.date | date_to_string }} <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
{% endfor %}

