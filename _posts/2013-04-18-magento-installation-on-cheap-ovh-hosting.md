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

    apt-get install apache2 mysql-server php5 php5-mysql php-soap php5-mcrypt php5-curl php5-gd php5-xcache

When dB ACL is Ok, check Your Apache / PHP configuration.

Module rewrite should be enabled. You could check it and activate if need :

    apache2ctl -M
    a2enmod rewrite
    /etc/init.d/apache2 restart

AllowOverride should be in All for Your Magento directory.

### Database creation

After that, You should create the database and configure the access for Magento user.

    CREATE DATABASE `magentodb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
    GRANT ALL PRIVILEGES ON `magentodb`.* TO 'magentodbu'@'localhost' IDENTIFIED BY 'multipass';

### Store transfert

Then You could make the data transfer and import into the dB Your Magento site.
The most simple way - it's to use rsync.

### Permission normalization

After the import check the permissions of Your site

    rm -rf www/var/cache/*
    rm -rf www/var/session/*
    chown -R www-data www
    chmod -R u+rwx www
    chmod 755 -R www/var
    
### Email configuration

In my case, the store used Gmail address, so, the most simple solution, it was to use ssmtp server with gmail ssmtp server. It's quite secure and reliable.
That's exact configuration, from /etc/ssmtp/ssmtp.conf

    hostname=ksXXXXXX.kimsufi.com
    root=someemail@gmail.com
    rewriteDomain=gmail.com
    FromLineOverride=YES
    AuthUser=someemail@gmail.com
    AuthPass=somepassword
    UseTLS=YES
    UseSTARTTLS=YES
    mailhub=smtp.gmail.com:587
    AuthMethod=LOGIN
    
You could check if the email is working by sending a password recovering email to yourself.

### Tests time

When all seems to be ready, make a tour over You store and if all is functional, switch the DNS from old production server to new one.

### References 

* https://www.ovh.com/fr/commande/kimsufi.cgi?hard=132sk1
* http://www.f15ijp.com/2010/01/magento-installing-on-a-debian-server/
* http://plusbryan.com/my-first-5-minutes-on-a-server-or-essential-security-for-linux-servers
* http://erikeldridge.wordpress.com/2009/07/30/tutorial-visudo-command-not-found/
* http://serverfault.com/questions/54591/how-to-install-change-locale-on-debian
* http://wiki.debian.org/sSMTP
