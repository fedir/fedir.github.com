---
title: Using ghstat for open source projects statistics collection and further rating
slug: using-ghstat-open-source-projects-statistics-and-ratings
date: 2018-04-02
comments: true
layout: post
categories:
- development
tags:
- github
- statistics
- golang
---

As a CTO, I must choose good strategy for my company. So when dealing with open source projects, I should be careful, to choose right one, otherwise, my company will take some risks.

But also as open source developer, I'm interesting in investing my time in technologies with high satisfaction level of quality requirements.

In the world of today, we have not always the vision of the quality of the code of each project, we could find on Github. Some projects integrates continious delivery processes, making regulary builds, and using code coverage metrics, to prove, basically, what the code is working and tested. But some projects no. Some projects have documentation, some no. Some projects authors mainains theirs projects actively, some no. And modern developer in this "open bar" world sometimes more "code consumer", than code author. Developers looks for bricks on Github and Sourceforge, glue it with code snippets, founded on Stackoverflow, chart it with a cheap bootstrap theme and the work is done. But... Sometimes, it's not enough. We need to choose better componenets, better solutions, to guarantee, what projects will work during all it's lifecycle. What it wil work good, stable, secure, fast (... many NFR goes here).

To help to developers and to technical leaders, as me, I wrote a tool, which could help to get statistics about open source projects, maintained via Github, and to rate them different multiple metrics.
