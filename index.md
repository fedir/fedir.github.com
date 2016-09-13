---
layout: page
title: Fedir RYKHTIK - Personal site
tagline: Supporting tagline
description: Personal site of Fedir RYKHTIK (CTO / Teacher / Programmer / Speaker from Toulon, France).
---
{% include JB/setup %}
{% assign teasers = site.posts %}
{% assign teasers_take = 3 %}
{% assign tags_take = 3 %}
{% assign teasers_words = 50 %}

Fedir RYKHTIK - CTO / Teacher / Programmer / Speaker from Toulon, France.

I'm making sites with Open Source techologies, such as Drupal, TYPO3, Wordpress, Symphony, Magento, Ionic.

Full CV You will find on [Linkedin](https://www.linkedin.com/pub/fedir-rykhtik/14/64/a84) and that's my [Twitter account](https://twitter.com/FedirFR).

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

