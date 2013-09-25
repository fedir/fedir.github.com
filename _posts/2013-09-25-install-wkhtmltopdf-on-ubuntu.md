--- 
comments: true 
date: 2013-09-25
layout: post 
slug: install-wkhtmltopdf-on-ubuntu
title: Installing wkhtmltopdf on Ubuntu Server 12.04
teaser: Installing wkhtmltopdf on Ubuntu Server 12.04 to make PDF documents from HTML.
categories: 
- web
- blog
tags: 
- wkhtmltodf
- sysadmin
---

Installing wkhtmltopdf on Ubuntu Server 12.04 to dynamically create PDF documents from HTML.

    apt-get install wkhtmltopdf
    apt-get install xvfb
    echo 'xvfb-run --server-args="-screen 0, 1024x768x24" /usr/bin/wkhtmltopdf $*' > /usr/bin/wkhtmltopdf.sh
    chmod a+x /usr/bin/wkhtmltopdf.sh
    ln -s /usr/bin/wkhtmltopdf.sh /usr/local/bin/wkhtmltopdf
    wkhtmltopdf http://www.google.com output.pdf

## References
* https://github.com/pdfkit/pdfkit/wiki/Installing-WKHTMLTOPDF
* http://stackoverflow.com/questions/9604625/wkhtmltopdf-cannot-connect-to-x-server
* http://stackoverflow.com/questions/8805032/xvfb-run-error-in-ubuntu-11-04
