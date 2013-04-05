---
comments: true
date: 2011-11-25 22:39:41
layout: post
slug: converting-lots-of-files-from-iso-8859-1-to-utf-8-with-help-of-iconv
title: Converting lots of files from ISO-8859-1 to UTF-8 with help of iconv
wordpress_id: 49
categories:
- UNIX'es
---

On one of my projects, I needed to convert lots of files previously encoded in ISO-8859-1 to UTF-8.





You could manage it with help of some text editors, or convert all files in one single script.





This snippet will replace all files in ISO-8859-1 by it's UTF-8 versions.



`for a in *.yourext; do iconv -f ISO-8859-1 -t utf8 $a > $a.utf8; mv -f $a.utf8 $a; done;`

* In my case files were under version control. If it's not the case for You, You could still make a static backup.
