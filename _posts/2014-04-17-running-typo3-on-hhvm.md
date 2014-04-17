---
comments: true
date: 2014-04-17
layout: post
slug: running-typo3-on-hhvm
title: Running TYPO3 on HHVM
categories:
- web
tags:
- blog
---

## About

New version of TYPO3 6.2 LTS is now available. It brings new level of the quality and functionality.
Probably on some old hardware which hosts big sites You will have some difference in the performance of the system.
In this case I could try HHVM, HipHop Virtual Engine, which replaces traditional FCGI and PHP-FPM approach.
HHVM is quite stable now.

### Installation of HHVM, Nginx, MySQL, PHP on Debian

	wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
	echo deb http://dl.hhvm.com/debian wheezy main | sudo tee /etc/apt/sources.list.d/hhvm.list
	sudo apt-get update
	sudo apt-get install nginx hhvm graphicsmagick mysql-server php5 php5-curl php5-fpm php5-gd php5-mysqlnd

### Nginx configuration

This configuraton initially made by Philipp Bergsmann includes a fallback to PHP FPM if there is a problem with HHVM on some of Your atypical modules, which were still not well tested on HHVM.

{% gist 10968146 %}

## References

* http://www.ph-bergsmann.com/typo3/2014/04/04/typo3-with-hhvm/
* http://blog.snowflake.ch/2014/04/03/typo3-mit-hhvm-howto-debian-wheezy-apache2/
* http://www.ph-bergsmann.com/typo3/2014/04/04/typo3-hhvm-speed-comparison/
* http://translate.google.com/translate?depth=1&hl=en&rurl=translate.google.com&sl=de&tl=en&u=http://blog.snowflake.ch/2014/04/14/showdown-hhvm-vs-php5-fcgi-vs-php5-fpm
* http://blog.macopedia.co/pl/post/running-typo3-cms-on-hhvm-part1/
* http://hhvm.com/blog/1817/fastercgi-with-hhvm
