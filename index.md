---
layout: page
title: Fedir's blog
tagline: Supporting tagline
---
{% include JB/setup %}

{% for post in site.posts %}
  <p>{{ post.date | date_to_string }}<a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></p>
{% endfor %}
