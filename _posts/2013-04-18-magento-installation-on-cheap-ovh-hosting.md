---
comments: true
date: 2013-04-18 23:58:18
layout: post
slug: cheap-hosting-for-magento
title: 'Magento installation on cheap hosting'
categories:
- web
tags:
- magento
- administration
---

### Introduction

Recently I've changed a hosting for one of Magento stores I've developed. Before it was installed on one of mine servers, but this server was some old.

So the idea was to put current Magento store aside, to have a performant hosting with satisfied requirements for Magento.

I've choosed between multiple possibilities, and have found, what companies, which provides Magento hosting ask lots of money, with some basic level of quality and performance. 

The solution was to make dedicated server for this Magento store.

Between different possibilities, I've discovered OVH's Kimsufi offer "mKS 2G" (CPU 1.2+ GHz, 2GB RAM, 500GB HDD) with annual fee 140€. It's not a XEON with 32 cores. But it perfectly feets the dimension of medium Magento shop.

Recent Debian distribution perfectly fits our needs.

So I order it.

### Hosting preparation

First of all we will follow security tutorial "My First 5 Minutes On A Server" by Bryan Kennedy, it will be enough for basic level of security.
After in my case I've configured locales and installed sudo package.
When You have the base, You could continue with instalaltion of LAMP packages required for Magento.

    apt-get install apache2 mysql-server php5 php5-mysql php-soap php5-mcrypt php5-curl php5-gd

After that, You should create the database and configure the access for MAgento user.

### References 

* https://www.ovh.com/fr/commande/kimsufi.cgi?hard=132sk1
* http://www.f15ijp.com/2010/01/magento-installing-on-a-debian-server/
* http://plusbryan.com/my-first-5-minutes-on-a-server-or-essential-security-for-linux-servers
* http://erikeldridge.wordpress.com/2009/07/30/tutorial-visudo-command-not-found/
* http://serverfault.com/questions/54591/how-to-install-change-locale-on-debian
