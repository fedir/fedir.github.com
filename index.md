---
layout: page
title: Fedir RYKHTIK - CTO / DevOps / Go Developer
tagline: Tagline
description: Personal site of Fedir RYKHTIK (CTO / DevOps / Go Developer from Toulon, France).
---
{% include JB/setup %}
{% assign teasers = site.posts %}
{% assign teasers_take = 3 %}
{% assign tags_take = 3 %}
{% assign teasers_words = 50 %}

Fedir RYKHTIK - CTO / DevOps / Go Developer from Toulon, France.

[CV](https://www.visualcv.com/fedir-rykhtik). [Talks](https://speakerdeck.com/fedir). [Twitter](https://twitter.com/FedirFR).

* * *

Articles :

{% for teaser in teasers %}
  <h4><a href="{{ BASE_PATH }}{{ teaser.url }}">{{ teaser.title }}</a></h4>
  <div class="date">{{teaser.date | date: "%A %b %d, %Y"}}</div>
 
  <div class="content">
    {% if teaser.teaser %}
      {{ teaser.teaser }}
    {% else %}
      {{ teaser.content | strip_html | truncatewords:teasers_words }}
    {% endif %}
  </div>
{% endfor %}

