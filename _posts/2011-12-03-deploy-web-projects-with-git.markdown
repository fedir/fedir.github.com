---
comments: true
date: 2011-12-03 12:18:18
layout: post
slug: deploy-web-projects-with-git
title: Web projects deployment with git
wordpress_id: 97
categories:
- Open source
- UNIX'es
---

The sequence of commands I use now, probably, it's possible to optimize more.

1. Creating remote repository. Adding `receive.denyCurrentBranch = ignore` into the config to avoid remote rejections. First commit.  
2. Local checkout. Work. Commit.  
3. Remote hard reset / force checkout.

It's also possible to use bare repository, but in this case we could have some limitation on remote side.

It's possible also to work on a branch and not on the trunk, in this case You will also need to make checkout on the remote side.

References :

  * http://toroid.org/ams/git-website-howto
  * http://stackoverflow.com/questions/2816369/git-push-error-remote-rejected-master-master-branch-is-currently-checked-o
  * http://habrahabr.ru/blogs/Git/60347/ (ru)
  * http://i-said.simplog.ru/posts/198-git-na-dvoih (ru)
