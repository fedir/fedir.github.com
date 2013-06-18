--- 
comments: true 
date: 2013-06-17
layout: post 
slug: js-validation
title: JS Validation with regular expressions  
teaser: Some main JS regexp patterns for practival use
categories: 
- web 
tags: 
- js
- regexp
---

    numbers and letters /^[0-9a-zA-Z]+$/; /^[0-9a-zA-Z]+$/.test(somevar)
    numbers /^\d+$/
    length somevar.length==10
    money /[1-9]\d*(?:.\d{0,2})?/
    birthdate /^[0123][\d]\/[01][\d]\/[12][09][\d]{2}$/i
