---
comments: true
date: 2013-10-07
layout: post
slug: typo3-fedext-contribution-cheat-sheet
title: TYPO3 Fedext contribution cheat sheet
categories:
- web
tags:
- blog
---

Quick notes how to participate to TYPO3 Fedext development.

### How to participate to TYPO3 Fedext project

- Find a ticket, related to the work of make one
- Fork the project on the github
- Clone it locally
- Make branch with ID related to the feature You are doing
- Work locally
  * One change per commit - one commit per change
  * Use short subjects and prefix them correctly
    * [BUGFIX]
    * [TASK]
    * [FEATURE]
    * [DOC]
  * Respect TYPO3 coding guidelines
- Push to github
- Make pull request

### Create, edit and push the branch to the origin

{% gist 7583770 %}

### Fork update

{% gist 6809684 %}

### Edit a commit message in already sent pull request

{% gist 7601923 %}

### References

* https://fedext.net/overview/contributing/contribution-guide.html
* http://www.turnkeylinux.org/blog/git-fix-commits
