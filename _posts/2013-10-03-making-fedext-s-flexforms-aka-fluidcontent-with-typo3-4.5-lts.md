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

- Install the latest TYPO3 4.5. LTS

- Install extensions :

  * flux
  * vhs
  * fluidcontent
  * fluidcontent_bootstrap

Better to install from the github, rather TER.

Flux must have this patch to work with TYPO3 4.5 LTS : https://github.com/FluidTYPO3/flux/commit/c3d3d6f4f3cad07cc47efa9599fd28a6fa022614
At the moment, it's still not merged.

- Clear the cache.

- Include static TypoScript of "fluidcontent_bootstrap" into Your TS setup.

- Add a Fluid content element on a test page. Choose the type of Bootstrap Elements.

- make modifications of the template to test.

- With TYPO3 4.5 LTS You could make backend templates without fluidpages, only with Fluid to maximize the standalone compatibility

### References

* fedext : https://fedext.net/
* https://github.com/FluidTYPO3/documentation/blob/master/QuickstartGuide.md
* http://thomas.deuling.org/de/2011/06/configure-the-fluid-typoscript-and-create-backend-templates/
