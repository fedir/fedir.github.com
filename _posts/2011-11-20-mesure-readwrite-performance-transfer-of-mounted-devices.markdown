---
comments: true
date: 2011-11-20 23:38:18
layout: post
slug: mesure-readwrite-performance-transfer-of-mounted-devices
title: 'Mounted devices read/write performance transfer measurement '
wordpress_id: 8
categories:
- UNIX'es
tags:
- benchmark
- hdd
- network
- performance
---

Recently I needed to measure the speed of **read/write performance** of remote **network disk**, mounted with Samba. There is different possibilities to measure it, but the most real - it's to read and write the data with **dd**, system utility, which is normally present on any Unix-like system.

To write the data we will generate the output from /dev/zero :

`dd if=/dev/zero of=/mnt/yourmount/test.img bs=8k count=32k`

To read the data we will use generated file and we will send it to /dev/null :

`dd if=/mnt/yourmount/test.img of=/dev/null bs=8k count=32k`

* This method You could also use for testing local **disk drive performance**, that's why I especially appreciate it.

** You could test Your **network bandwidth** using this method.
