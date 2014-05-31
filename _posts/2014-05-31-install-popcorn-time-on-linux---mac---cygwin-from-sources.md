---
comments: true
date: 2014-05-31
layout: post
slug: install-popcorn-time-on-linux---mac---cygwin-from-sources
title: Install Popcorn Time on Linux / Mac / Cygwin from sources
categories:
- web
tags:
- blog
---

Popcorn Time - it's a project, which combines traditional peer-to-peer exchange with a gallery and even player with integrated subtitles search.

It's a NodeJS HTML5 open source application, and it's interesting to analyze from technical point of view, to see, how it was build.

On the base of Popcorn Time other projects appears, as Fleex - service of language learning, where You could find a word definiton directly in the context of movie watching.

The best way of Popcorn Time installation - from sources, wo in this way You have no risk to get a malicious content inside.

## Installation

1. Install http://nodejs.org/
2. Install git
3. Run this command in the terminal

	git clone git@github.com:popcorn-official/popcorn-app.git
	cd popcorn-app/
	sudo npm install -g grunt-cli
	npm install
	grunt build

App is ready in the build/releases/Popcorn-Time/mac/

## Ressources

* https://github.com/popcorn-official/popcorn-app
* http://www.roussos.cc/2014/03/21/building-running-popcorn-time/
* http://www.webupd8.org/2014/03/how-to-install-popcorn-time-from-source.html
* https://github.com/popcorn-time/popcorn-app
