---
comments: true
date: 2013-10-03
layout: post
slug: making-fedext-s-flexforms-aka-fluidcontent-with-typo3-4.5-lts
title: Making Fedext's flexforms aka fluidcontent with TYPO3 4.5 LTS
categories:
- web
tags:
- typo3
- fedext
---

1. Install the latest TYPO3 4.5. LTS

2. Install extensions :

* flux
* vhs
* fluidcontent
* fluidcontent_bootstrap

Better to install from the github, rather TER.

Flux must have this patch to work with TYPO3 4.5 LTS : https://github.com/FluidTYPO3/flux/commit/c3d3d6f4f3cad07cc47efa9599fd28a6fa022614
At the moment, it's still not merged.

3. Clear the cache.

4. Include static TypoScript of "fluidcontent_bootstrap" into Your TS setup.

5. Add a Fluid content element on a test page. Choose the type of Bootstrap Elements.

6. Test modifications of template.


### References

* fedext : https://fedext.net/
