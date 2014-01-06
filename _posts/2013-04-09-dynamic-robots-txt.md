---
comments: true
date: 2013-04-09 23:38:18
layout: post
slug: dynamic-robots-txt-php
title: 'Dynamic robots.txt implementation with PHP'
teaser: "How to create dynamic robots.txt file for sites with multiple domains, with the aim to declare custom sitemaps, indexation rules etc."
categories:
- web
tags:
- seo
- php
- robots.txt
---

## The problem

Recently I discovered what on some multidomain sites I made, I had the same robots.txt file for all the sites, which has multiple domains. That created some confusions for search engines, even for external one, based on mnoGoSearch technology.

## Solution

So, dynamic robots.txt should be done, which changes robots.txt content conditionally and dynamically.

## Methods

First of all You should make a substituition of url /robots.txt with dynamic script, which will generate the output, for example : robots.php

With Apache You could make simple .htaccess rule to acheive that.

     RewriteRule  ^robots\.txt$ /robots.php [NC,L]

And after we could make whatever we want, to generate robots.txt of our dream in the best way with the help of PHP.

     error_reporting(0);
     // read static robots.txt template
     $robotsTxt = @file_get_contents('robots.txt');
     ...
     # make some operations with default template
     ...
     header("Content-Type:text/plain");
     echo $robotsTxt;

## Bonuses

You could make conditions based on user-agents to avoid the indexation by spiders You don't need.

## Ressources

* http://forums.oscommerce.com/topic/380271-dynamic-robotstxt-to-stop-worthless-traffic/
* http://blog.bannasties.com/2012/07/how-to-implement-your-dynamic-robots-txt/
