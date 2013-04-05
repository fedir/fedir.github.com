---
layout: page
title: Fedir's blog
tagline: Supporting tagline
---
{% include JB/setup %}

Hi, I'm Fedir RYKHTIK, Open Source Web Developer from Toulon, France.

I'm making sites with Open Source techologies, as Drupal, TYPO3, Wordpress, CodeIgniter.

Full CV You could find on [Linkedin](http://www.linkedin.com/pub/fedir-rykhtik/14/64/a84).

That's some articles I would like to share with You :

{% for post in site.posts %}
{{ post.date | date_to_string }} <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
{% endfor %}
