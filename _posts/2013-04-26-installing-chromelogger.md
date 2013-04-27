---
comments: true
date: 2013-04-26 02:15:18
layout: post
slug: installing-chromlogger
title: 'Transversal installation of Chromelogger for PHP5'
teaser: "Chromelogger it's a tool of console debugging. It gives You a possibility to make debug process fast and transparent, even on production server."
categories:
- web
tags:
- php
- debug
- console
---

# The problem

Sometimes You need to debug. It could happen in production, staging, or development.

And sometimes You have no time to install and configure Zend Debugger, XDebug, or other advanced PHP5 debuggers. 

And, probably, You don't want to disturb other visitors of the website by Your debugging.

So in this case, it's quite handy to use tools of console debugging, which sends data with the help of additional "invisible" data headers from the server to Your browser.

# Solution

One of such tools calls Chromlogger, it's an extension for Google Chrome browser. It's supports lots of languages and platforms : PHP, Python, Ruby, Node.js, .NET, Coldfusion.
In my case I'm interesting in PHP logging.

So, I will install ChromePHP class transverally on all vhost of my server.

First of all, we will identify include path and we will add ChromePHP there :

    /opt/php5.3/bin/php -i | grep include_path
        include_path => .:/opt/php5.3/lib/php => .:/opt/php5.3/lib/php
    cd /opt/php5.3/lib/php
    mkdir includes 
    cd includes 
    wget https://raw.github.com/ccampbell/chromephp/master/ChromePhp.php
    cd .. 
    chmod -R a+rx includes/
    
And now we will enable automatic prepending of ChromePHP library to every PHP script, which will be executed by PHP :

    vim /opt/php5.3/php.ini
    auto_prepend_file = /opt/php5.3/lib/php/includes/ChromePhp.php

It uses a little bit of ressources, so, if You would like to keep the performance, you could always make a condition by a GET variable or a COOKIE value.

So now, in Your scripts You could use ChromePHP to send the debugging data without disturb others :

    ChromePhp::log('Hello console!');
    ChromePhp::log($_SERVER);
    ChromePhp::warn('invisible warning');

# Ressources

* http://craig.is/writing/chrome-logger
* https://chrome.google.com/webstore/detail/chrome-logger/noaneddfkdjfnfdakjjmocngnfkfehhd
* http://www.php.net/manual/en/ini.core.php#ini.auto-prepend-file
* https://github.com/ccampbell/chromephp
* https://github.com/ccampbell/chromelogger
