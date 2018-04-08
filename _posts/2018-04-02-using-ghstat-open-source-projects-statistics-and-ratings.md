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

As a CTO, I must choose the best strategy for my company. So when dealing with open source projects, I should be careful, to choose the right one, otherwise, my company will take some risks.

But also as an open source developer, I'm interested in investing of my time in technologies with a high level of quality and stability.

In the world of today, we have not always the vision of the quality of the code of each project, which we could find on Github. Some projects integrates continuous delivery processes, making regular builds, and using code coverage metrics, to prove, basically, what the code is working and tested. But some projects no. Some projects have documentation, some no. Some project authors mainain their projects actively, some no.

Modern developers in this "open bar" world sometimes more *"code consumer"*, or *"code constructor"*, then *"code writer"*. Developers are looking for bricks on Github and Sourceforge, gluing it with code snippets, founded on Stackoverflow, cut it with a cheap bootstrap theme and the work is done. But even this approach should be done carefully. We must choose best components, best solutions, to have a minimal guarantee, what projects will work during all its life cycle. What it will work good, stable, secure, fast (... many [NFR-s](https://en.wikipedia.org/wiki/Non-functional_requirement) could go here).

To help to developers and to technical leaders, I wrote a command tool written in Go, which could help to get statistics about open source projects, maintained via Github, and to rate them different multiple metrics.

It calls ghstat and You could find it here: [https://github.com/fedir/ghstat](https://github.com/fedir/ghstat)

`ghstat` helps You to check multiple metrics, related to the project, but at the moment it's not designed to check code quality of projects, this is up to You, once You identified most interesting projects with the help of `ghstat`.

The usage is quite simple, You run it with list of Github projects keys, and the destination, where You would like to output collected statistics :

    ./ghstat -r bottlepy/bottle,plotly/dash,django/django,pallets/flask,Pylons/pyramid,channelcat/sanic,\
    tornadoweb/tornado,web2py/web2py,TurboGears/tg2 -f stats/python_frameworks.csv

As result, You will have a CSV file with similar content :

    Name,URL,Author,Author's followers,Top 10 contributors followers,Created at,Age in days,Total commits,Total additions,Total deletions,Total code changes,Medium commit size,Stargazers,Forks,Contributors,"Active forkers, %",Open issues,Total issues,Issue/day,"Closed issues, %",Place
    django/django,https://github.com/django/django,jacobian,2223,11871,2012/04,2164,21421,2712355,2057507,4769862,222,32860,13916,410,2.95,180,180,0.0832,100.00,1
    pallets/flask,https://github.com/pallets/flask,mitsuhiko,10633,33199,2010/04,2917,1957,74116,45505,119621,61,34309,10534,408,3.87,26,1410,0.4834,98.16,2
    tornadoweb/tornado,https://github.com/tornadoweb/tornado,[Account removed],0,3693,2009/09,3126,2632,110148,57943,168091,63,15448,4504,280,6.22,191,1315,0.4207,85.48,3
    Pylons/pyramid,https://github.com/Pylons/pyramid,[Account removed],0,656,2010/10,2716,6045,358647,290001,648648,107,2702,790,247,31.27,91,907,0.3339,89.97,4
    channelcat/sanic,https://github.com/channelcat/sanic,channelcat,238,643,2016/05,675,907,26027,12092,38119,42,8916,836,168,20.10,138,531,0.7867,74.01,5
    TurboGears/tg2,https://github.com/TurboGears/tg2,invalid-email-address,708,1167,2011/02,2599,820,36998,20644,57642,70,234,58,25,43.10,12,74,0.0285,83.78,6
    bottlepy/bottle,https://github.com/bottlepy/bottle,defnull,769,2825,2009/06,3197,1376,112237,49377,161614,117,5342,1090,154,14.13,252,671,0.2099,62.44,7
    web2py/web2py,https://github.com/web2py/web2py,mdipierro,422,797,2008/11,3432,5411,602972,330737,933709,172,1573,750,147,19.60,177,714,0.2080,75.21,8
    plotly/dash,https://github.com/plotly/dash,chriddyp,218,950,2015/04,1087,409,116616,111480,228096,557,4510,415,15,3.61,65,187,0.1720,65.24,9

Here You could find nicely formatted example : [https://github.com/fedir/ghstat/blob/master/stats/python_frameworks.csv](https://github.com/fedir/ghstat/blob/master/stats/python_frameworks.csv)

Let's check more precisely on the different metrics and precise some of them :

* Name - Project key
* URL - Full Github URL of the project
* Author - Author's Github name
* Author's followers - Number of followers of the author
* Top 10 contributors followers - Total number of followers of TOP10 contributors of the project
* Created at - Creation date
* Age in days - Age in days
* Total commits - Total number of commits
* Total additions - Total additions lines
* Total deletions - Total deletions lines
* Total code changes - Additions + deletions together
* Medium commit size - Medium size of each commit of the project
* Stargazers - Number of people, who starred the project
* Forks - Number of forkers
* Contributors - Number fo people, contributed to the project
* Active forkers, % - Percentage of people, who forked, and who actually contributed into the project
* Open issues - Number of open issues
* Total issues - Open + Total issues
* Issue/day - Average number of issues by day
* Closed issues, % - Percentage of closed issues
* Place - On the basis of different quality metrics each project is rated

You could open generated file with OpenOffice Calc / Google Spreadsheets / Microsoft Excel.

Also `ghstat` gives You several additional ratings, as : 

    * The most popular project is `pallets/flask`
    * The newest project is `channelcat/sanic`
    * The project with more commits is `django/django`
    * The project with more tags is `django/django`
    * The project made by most notable top contributors is `pallets/flask`
    * The project with best errors resolving rate is `django/django`
    * The project with more commits by day is `django/django`
    * The project with the most active community is `TurboGears/tg2`
    * The best project (taking in account placements in all competitions) is `django/django`

Using such approach You could easily compare different projects, check their quality metrics, and to choose right one for further analyze (code quality review, used dependencies...).

Projects homepage : [https://github.com/fedir/ghstat](https://github.com/fedir/ghstat)
