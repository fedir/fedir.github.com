---
comments: true
date: 2013-10-04
layout: post
slug: configuring-mnogosearch-for-your-language
title: Configuring mnoGoSearch for Your language
categories:
- web
tags:
- mnogosearch
---

### Finding synonyms

Add synonym support, the file must be situated in /mngInstallPath/etc/synonym/ folder. All the configuratioin is made relatively to etc /mngInstallPath/etc/ folder or You could use absolute path.

    Synonym <filename> 

### Ispell / Aspell

  * mnoGoSearch uses ispell or aspell dictionaries and affix files
  * where to get ispell / aspell files :
    * http://www.mnogosearch.org/download.html
      * http://www.mnogosearch.org/Download/ispell/francais-IREQ.tar.gz
    * ftp://ftp.gnu.org/gnu/aspell/dict/0index.html
    * http://fmg-www.cs.ucla.edu/geoff/ispell-dictionaries.html
  * configure languages

Syntax :

    Affix [lang] [charset] [ispell affixes file name]
    Spell [lang] [charset] [ispell dictionary filename]

### Stopwords

Words to exclude from indexing.

    StopwordFile {filename}

### Add other useful configuration for better search

Syntax :

    Dehyphenate yes

### Example

The result should be like this :

    Synonym synonym/french-utf8.syn
    Affix fr utf-8 ispell/francais-utf8.aff
    Spell fr utf-8 ispell/francais-utf8.dico
    StopwordFile stopwords/fr-utf8.sl
    Dehyphenate yes

### References

* http://www.mnogosearch.org/doc33/msearch-fuzzy.html

