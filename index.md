---
layout: page
title: Fedir's blog
tagline: Supporting tagline
---
{% include JB/setup %}

Fedir RYKHTIK, Expert Web, France

[![](http://static.zend.com/img/yellowpages/zce_php5-3_logo.gif)](http://www.zend.com/en/store/education/certification/yellow-pages.php#show-ClientCandidateID=ZEND015474) [![](http://certification.typo3.org/fileadmin/user_upload/typo3-integrator-banner/Cert_button_01_orange.png)](http://certification.typo3.org/index.php?id=63)

{% for post in site.posts %}
{{ post.date | date_to_string }} <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
{% endfor %}
