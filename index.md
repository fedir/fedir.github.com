---
layout: page
title: Fedir's blog
tagline: Supporting tagline
---
{% include JB/setup %}

Fedir RYKHTIK, Expert Web, France

[![](/assets/res/zcephp53.gif)](http://www.zend.com/en/store/education/certification/yellow-pages.php#show-ClientCandidateID=ZEND015474) [![](/assets/res/typo3ci.png)](http://certification.typo3.org/index.php?id=63)

{% for post in site.posts %}
{{ post.date | date_to_string }} <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
{% endfor %}
