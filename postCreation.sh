cat listing | while read POST; do 

TEMPLATE='---
comments: true
date: $DATE
layout: post
slug: $SLUG
title: $TITLE
teaser: $TEASER
categories:
- web
tags:
- article
---
'

echo $TEMPLATE > _posts/$POST; 

done
