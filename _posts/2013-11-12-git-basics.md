---
comments: true
date: {}
layout: post
slug: "git-basics"
title: git basics
categories: 
  - web
tags: 
  - blog
published: true
---

### why we control the source code

So, version control system, when we need it ?

- To help to remember, when and why You made some important modifications
- To find files, which were modified on the server
- To explain to other people the structure and function of Your code

### Different version control systems

Historically different VCS were developed : CVS, Subversion (SVN), Git.
As users the idea of VCS and usage experience were more and more developed, Subversion is more functional than CVS, and Git is more functional, than Subversion.
We will concetrate on git, as it's the most popular and interesting system.

#### Comparing git to its predecessors

Git is autonomous, You could use this system even on Your local computer, when You are offline.
It has more stages, so project evolution could be more precise during it's development workflow.

#### Workflow difference betwet git and svn

* SVN
  - Workspace
  - Index
  - Repository
 
* git
  - Stash
  - Workspace
  - Index
  - Local Repository
  - Upstream Repository
  
### Git basic commands

	git clone
    git add
    git commit
    git pull
    git push

### Advanced commands

 	git merge
    git rebase

### References

* git dynamic cheatsheet : www.ndpsoftware.com/git-cheatsheet.html