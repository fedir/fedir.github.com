---
comments: true
date: 2011-11-26 08:57:57
layout: post
slug: send-a-whole-directory-by-ftp-recursively
title: Send a whole directory by FTP recursively
wordpress_id: 70
categories:
- UNIX'es
tags:
- ftp
- recursive
- shell
---

Sometimes we could be in the situation, when we must use FTP in the shell. It's extremely rare, but such situation could happen. So, recently, I had such situation, when I had a FTP access, which was available only from some dedicated server, and I had to move some folders by FTP.

The difficult part here, is what with the help of standard ftp command, You couldn't send / retrieve hierarchical folders. So I had to find the solution with other FTP clients.

The most simple way - it's to use **ncftp** client. It works perfectly, easy to install, easy to use.

To send a folder to the remote server when You are connected : 

`put -R yourfolder`

To retrieve a folder : 

`get -R yourfolder`

You could use also use `ncftpput` and `ncftpget` shell utilities to batch more easily Your uploads / downloads.

* [ncftp documentation](http://www.ibm.com/developerworks/aix/library/au-ncftp_flex/index.html)
