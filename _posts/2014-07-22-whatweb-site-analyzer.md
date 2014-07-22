---
comments: true
date: 2014-07-22
layout: post
slug: whatweb-site-analyzer
title: WhatWeb site analyzer
categories:
- web
tags:
- blog
- whatweb
---

### What it does

Helps to detect the technology behind the site. Gives an amazing amount of information

### Installation

    sudo apt-get install whatweb
    sudo gedit /etc/apt/sources.list
    sudo vim /etc/apt/sources.list
    sudo apt-get update
    sudo apt-get install whatweb

### Usage example

    whatweb spip.fr

Results in :

    http://www.spip.net [200] Apache[2.2.22], Country[FRANCE][FR], HTTPServer[Debian Linux][Apache/2.2.22 (Debian)], IP[193.56.58.14], JQuery, MetaGenerator[SPIP 3.0.11-dev SVN %5B20657%5D], OpenSearch[http://www.spip.net/spip.php?page=opensearch.xml], PHP[5.4.4-14+deb7u12], SPIP[3.0.11-dev][spip(3.0.11-dev),compagnon(1.4.1),dump(1.6.7),images(1.1.6),forum(1.8.27),jqueryui(1.8.21),mediabox(0.8.4),medias(2.7.47),mots(2.4.10),msie_compat(1.2.0),organiseur(0.8.10),petitions(1.4.4),porte_plume(1.12.3),revisions(1.7.6),safehtml(1.4.0),sites(1.7.8),squelettes_par_rubrique(1.1.1),stats(0.4.15),svp(0.80.14),urls(1.4.14),vertebres(1.2.2),opensearch(0.1.1),openid(1.1.11),memoization(1.2.0),fulltext(0.7.1),autorite(0.9.12),coloration_code(0.7.0-dev),crayons(1.13.8),facteur(2.2.6),notifications(2.2.2),boussole(2.3.20),iterateurs(0.6.1),queue(0.6.6),breves(1.3.5),compresseur(1.6.4),tw(0.8.17),checkautobr(0.1.2)], Script[text/javascript], Title[SPIP], UncommonHeaders[composed-by,x-spip-cache,x-varnish,x-varnish-age], Varnish, Via-Proxy[1.1 varnish], X-Powered-By[PHP/5.4.4-14+deb7u12]

WhatWeb works on Ruby. Version depended. If You will have problems with launching, try to play with the version.

    rvm install 1.9.3

### Ressources

+ https://www.owasp.org/index.php/Fingerprint_Web_Application_Framework_%28OTG-INFO-009%29
+ http://www.morningstarsecurity.com/research/whatweb
+ http://www.vulnerabilityassessment.co.uk/whatweb.htm
+ https://github.com/urbanadventurer/WhatWeb
+ http://www.installion.co.uk/ubuntu/raring/universe/w/whatweb/install.html
