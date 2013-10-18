---
comments: true
date: 2013-10-18
layout: post
slug: command-line-tools-for-data-science
title: Command-line tools for data science
categories:
- web
tags:
- blog
---

### What is it

Functional examples from the tutorial of data processing by Jeroen Janssens, dutch data scientist.

### Get test JSON

    curl -s 'http://headers.jsontest.com/' > http.json

### Using command-line JSON processor

    < http.json jq '.'

### Convert JSON to CSV

    < data.json json2csv -k name, value

### Using csvkit

    < million-header.csv csvsort -rc cash | csvlook

### Scraping data from a table on Wikipedia

    curl -s 'http://en.wikipedia.org/wiki/List_of_countries_and_territories_by_border/area_ratio' | scrape -be 'table.wikitable > tr:not(:first-child)' | xml2json | jq -c '.html.body.tr[] | {country: .td[1][], border: .td[2][], surface: .td[3][], ratio: .td[4][]}' | head

### Generating samples

    seq 10000 | ./sample -r 20% -d 1000 -s 5 | jq '{number: .}'

### Gets statistics from CSV with R

    curl -s 'https://raw.github.com/pydata/pandas/master/pandas/tests/data/iris.csv' | ./Rio -e 'summary(df)'
    curl -s 'https://raw.github.com/pydata/pandas/master/pandas/tests/data/iris.csv' | ./Rio -se 'sqldf("select * from df where df.SepalLength > 7.5")' | csvlook

### References

* jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html
* https://github.com/onyxfish/csvkit
* https://github.com/jeroenjanssens/data-science-toolbox
* https://github.com/parmentf/xml2json
* https://github.com/fedir/data-science-toolbox
