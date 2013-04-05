---
comments: true
date: 2011-11-25 23:21:56
layout: post
slug: mysql-runtime-memory-calculator
title: MySQL runtime memory calculator
wordpress_id: 65
categories:
- Words
---

During recent optimization of development and preproduction server, I had recall some MySQL optimization techniques, related to better cache configuration. There is always a dilemma : if You will give not enough memory, You will have the risk to have slow database server, which will not have enough place to cache queries; and if You will give too much memory, You could be in the situation of physical memory lack on Your server, so all other applications will be less efficient.

To avoid these situations, You could use online tool written by Ole Morten Halvorsen. This help of this tool could find the maximum volume of memory, You could give to Your MySQL / MariaDB database server.

* [http://www.omh.cc/mycnf/](http://www.omh.cc/mycnf/)
