--- 
comments: true 
date: 2015-09-01
layout: post 
slug: install-wkhtmltopdf-on-debian-7.8
title: Installing wkhtmltopdf on Debian 7.8
teaser: Installing wkhtmltopdf on Debian 7.8 to make PDF documents from HTML.
categories: 
- web
- blog
tags: 
- wkhtmltodf
- sysadmin
---

Installing wkhtmltopdf on Debian 7.8 to dynamically create PDF documents from HTML.

    apt-get update
    aptitude install xfonts-base xfonts-75dpi fontconfig
    mkdir ~/src/wkhtmltopdf -p
    cd ~/src/wkhtmltopdf
    wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb
    dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb

## References
* https://charlycoste.wordpress.com/2015/02/04/installer-odoo-8-sur-debian-7/
* http://wkhtmltopdf.org/downloads.html
* http://fedir.github.io/web/blog/2013/09/25/install-wkhtmltopdf-on-ubuntu/
