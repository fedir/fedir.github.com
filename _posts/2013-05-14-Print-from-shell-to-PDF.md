---
 comments: true
 date: 2013-05-14
 layout: post
 slug: print-from-shell-to-pdf
 title: Print from shell to PDF
 teaser: How to print from shell to PDF
 categories:
 - web
 tags:
 - article
 - pdf
 ---

### lpr

    man -t 1 ls | lpr -P PDF
    lpr -P PDF filename

### Ressources

- http://www.techytalk.info/bash-shell-output-to-printer-or-pdf/
- http://blog.nguyenvq.com/2011/04/13/lpr-printing-on-command-line/
- http://terokarvinen.com/2011/print-pdf-from-command-line-cups-pdf-lpr-p-pdf
