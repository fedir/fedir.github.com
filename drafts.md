drafts before to be published after

#begining of contribution to openstreetmap
http://josm.openstreetmap.de/
installation
http://www.openstreetmap.org/
editing map
mobile applications

# empty vs isset

* http://stackoverflow.com/questions/7191626/isset-and-empty-what-to-use
* http://stackoverflow.com/questions/4559925/why-check-both-isset-and-empty
* http://stackoverflow.com/questions/1960509/isset-and-empty-make-code-ugly/1960588#1960588
* http://kunststube.net/isset/
* http://php.net/manual/en/types.comparisons.php

# TYPO3 surf
* http://forge.typo3.org/projects/package-typo3-surf
* http://www.youtube.com/watch?v=6jvHJL2djLY
* http://etobi.de/blog/2012/05/deployment-setup-typo3-surf/
* https://git.typo3.org/FLOW3/Packages/TYPO3.Surf.git/blob_plain/HEAD:/Documentation/Guide/Index.rst
 
# Raspberry Pi
Intro : aim to use
First steps
Installing OpenElec
  http://wiki.openelec.tv/index.php?title=Installing_OpenELEC_on_Raspberry_Pi
  build or download from http://openelec.thestateofme.com/official_images/

# Print from shell to PDF

* http://www.techytalk.info/bash-shell-output-to-printer-or-pdf/
* http://blog.nguyenvq.com/2011/04/13/lpr-printing-on-command-line/
* http://terokarvinen.com/2011/print-pdf-from-command-line-cups-pdf-lpr-p-pdf

# OpenLayers API hints (with demo/examples)
* trigger an element
    soMarkers[soSearchResultId].events.triggerEvent('mousedown');
* create a popup
    var markerClick = function(evt) {
 				if (this.popup == null) {
						this.popup = this.createPopup(this.closeBox);
						map.addPopup(this.popup);
						this.popup.show();
						soPopups[id] = this.popup;
					} else {
						this.popup.toggle();
					}
					currentPopup = this.popup;
					OpenLayers.Event.stop(evt);
				};
 			marker.events.register("mousedown", feature, markerClick);
* create a marker
    var feature = new OpenLayers.Feature(layer, ll);
 			feature.closeBox = true;
				feature.popupClass = popupClass;
				feature.data.popupContentHTML = popupContentHTML;
				feature.data.overflow = "auto";
				feature.data.icon = new OpenLayers.Icon(
					iconUrl,
					new OpenLayers.Size(markerIconWidth, markerIconHeight)
				);
				var marker = feature.createMarker();
* zoom and center
    map.zoomToExtent(markersLayerDynamic.getDataExtent());
* create multiple layers
* make a hover
    marker.events.register('mouseover', marker, function(evt) {
 				if (this.title_popup == null) {
						this.title_popup = new OpenLayers.Popup("Popup",
							ll_title,
							new OpenLayers.Size(150,75),
							titleHtml,
							null,
							false
						);
						map.addPopup(this.title_popup);
					} else {
						this.title_popup.show();
					}
				});
* open and close the popup
    svar markerClick = function(evt) {
 				if (this.popup == null) {
						this.popup = this.createPopup(this.closeBox);
						map.addPopup(this.popup);
						this.popup.show();
						soPopups[id] = this.popup;
					} else {
						this.popup.toggle();
					}
					currentPopup = this.popup;
					OpenLayers.Event.stop(evt);
				};


# svn snippets

* http://blairvanderhoof.com/gist-embed/
	Loading a gist with both footer and line numbers removed
* svn update dry run
	svn merge –dry-run -r BASE:HEAD .
	ref. : http://justaddwater.dk/2008/04/29/how-to-make-a-dry-run-with-svn-update/


# avoiding spam problems

* test tools
 * Docs
  * http://support.wysija.com/knowledgebase/6-golden-rules-to-avoid-being-labeled-a-spammer/
  * http://blog.sendgrid.com/10-tips-to-keep-email-out-of-the-spam-folder/
 * Tools 
  * http://www.isnotspam.com/ 
  * http://www.mail-tester.com/

# OpenLayers local install
 * http://dev.openlayers.org/releases/OpenLayers-2.12/readme.md
 * http://blog.rodolphe.quiedeville.org/index.php?post/2010/11/Installer-la-librairie-OpenLayers-sur-votre-server
 * http://trac.osgeo.org/openlayers/wiki/HowToDownload

# OpenLayers shortest path
 * http://wiki.openstreetmap.org/wiki/RU:Routing
 * http://wiki.openstreetmap.org/wiki/List_of_OSM_based_Services#Routing
 * http://map.project-osrm.org/
 * http://stackoverflow.com/questions/13481599/openstreetmap-how-to-get-the-shortest-travel-distance-by-car-between-multiple-po

* creative writing tools
 * github full screen edit mode
 * FocusWriter

# ultimate prestashop server setup

2013-06-19

# Методология разработки приложения
 1. прототипирование, общая архитектура приложения
 2. статическая реализация
 3. динамизация приложения

# mnogosearch search adjustments
## fuzzy search
 * suffixes
  * http://www.mnogosearch.org/doc/msearch-cmdref-spell.html
  * http://www.mnogosearch.org/doc/msearch-fuzzy.html#ispell
  * http://www.mnogosearch.org/Download/ispell/francais-IREQ.tar.gz
 * stopwords
  * http://www.mnogosearch.org/doc33/msearch-cmdref-stopwordfile.html
  * etc/stopwords/fr.sl

# developement stratigems
 * implementation
 * technology must provide different possibilities

2013-06-24
# js ressources
 * http://casperjs.org/faq.html#faq-javascript < last item
 * http://ejohn.org/apps/learn
 * http://eloquentjavascript.net/contents.html
 * http://www.codecademy.com/tracks/javascript
 * http://www.javascriptenlightenment.com/JavaScript_Enlightenment.pdf

2013-06-25
#typo3 bootstrap
 * https://github.com/Ecodev/bootstrap_package
 * http://bootstrap.typo3cms.demo.typo3.org/
 * http://community.linuxmint.com/tutorial/view/486

2013-06-25
# fluid / fedex
 * fluid template engine
  * remplaces old method
  * basic usage
   * loops
   * conditions
   * forms
   * images
  * viewhelpers
 * fedext
  * http://fedext.net/overview/beginners-guide.html
  * http://fedext.net/features/fluid-flexforms.html
 * gists related 
 * http://www.t3node.com/blog/combining-fluid-viewhelpers-and-typoscript-in-typo3-5-basic-examples/
 * http://stackoverflow.com/questions/16393091/typoscript-arrays-and-using-them-in-fluid
 * http://extensions.fedext.net/overview/extensions.html
 * http://fedext.net/overview.html

2013-07-01
# Синтетический пост про TYPO3 conf, как у Мэтью

2013-07-01
# DevOps
 * http://en.wikipedia.org/wiki/DevOps
 * http://code.google.com/p/devops-toolchain/wiki/BestPractices
 * Software
  * http://en.wikipedia.org/wiki/Puppet_(software)
  * http://en.wikipedia.org/wiki/Chef_(software)
  * http://en.wikipedia.org/wiki/Salt_(software)
 * http://www.ibm.com/developerworks/ru/library/a-devops2/
 * http://www.ibm.com/developerworks/ru/library/mo-mobile-devops/
 * http://www.opscode.com/blog/chefconf-talks/devops-patterns-distilled-implementing-the-needed-practices-in-four-practical-steps-gene-kim/
 * http://www.agileweboperations.com/devops-anti-patterns
 * http://www.computerweekly.com/cgi-bin/mt-search.cgi?IncludeBlogs=113&tag=release%20management&limit=20
 * http://foodfightshow.org/2013/03/the-phoenix-project.html
 

2013-07-02
# Web Components
    http://www.w3.org/TR/2013/WD-components-intro-20130606/
    http://html5-demos.appspot.com/static/webcomponents/index.html
    http://julienvey.com/2013/02/28/dom-observe/
    http://www.webcomponentsshift.com/
    http://www.polymer-project.org/
        http://www.polymer-project.org/getting-started.html
    https://dvcs.w3.org/hg/webcomponents/raw-file/tip/explainer/index.html    
    https://dvcs.w3.org/hg/webcomponents/raw-file/tip/spec/shadow/index.html
    http://www.dartlang.org/articles/web-ui/#components
    http://www.techrepublic.com/blog/webmaster/learn-more-about-web-components-with-these-demos/2477
    http://www.youtube.com/watch?v=0g0oOOT86NY
    http://techcrunch.com/2013/05/19/google-believes-web-components-are-the-future-of-web-development/
    https://github.com/termi/CreativeWork/blob/WCE/RU_ru/Web%20Components%20Explained/Translation.md
    http://www.dartlang.org/articles/web-ui/
    http://glazkov.com/2011/01/14/what-the-heck-is-shadow-dom/
    http://wiki.whatwg.org/wiki/Component_Model

2013-07-05
# ETL
 * http://en.wikipedia.org/wiki/Extract,_transform,_load
 * http://en.wikipedia.org/wiki/Category:ETL_tools
  * http://en.wikipedia.org/wiki/Pentaho
  * http://en.wikipedia.org/wiki/Talend_Open_Studio_for_Data_Integration
  * http://en.wikipedia.org/wiki/Scriptella
  * http://en.wikipedia.org/wiki/CloverETL
  * http://en.wikipedia.org/wiki/Apatar

2013-07-08
# Fastest grep
 * http://stackoverflow.com/questions/9066609/fastest-possible-grep
 * http://stackoverflow.com/questions/11095160/faster-alternative-to-unix-grep
 * http://docstore.mik.ua/orelly/unix/upt/ch27_06.htm
 * http://www.renault-club.ru/showthread.php?t=26053&page=5
 * http://unix.stackexchange.com/questions/8914/does-grep-use-a-cache-to-speed-up-the-searches
 * http://stackoverflow.com/questions/5200591/how-to-use-grep-efficiently

2013-07-09
# JS testing tools
 * https://github.com/n1k0/casperjs/wiki
  * http://blog.newrelic.com/2013/06/04/simpler-ui-testing-with-casperjs-2/
 * http://jstest.jcoglan.com/slimer.html
 * http://slimerjs.org/
 * http://phantomjs.org/
  * https://github.com/ariya/phantomjs/wiki/Quick-Start

2013-07-09
# JS presentation frameworks
* Impress.js
 * http://bartaz.github.io/impress.js
 * https://github.com/bartaz/impress.js/wiki/Examples-and-demos
 * http://johnpolacek.github.io/WhatTheHeckIsResponsiveWebDesign-impressjs/
 * bartaz.github.io/meetjs/css3d-summit/
 * https://github.com/regebro/impress-console
 * http://lab.hakim.se/reveal-js/
 * https://github.com/bartaz/impress.js
* Reveal.js
 * http://lab.hakim.se/reveal-js/
 * https://github.com/hakimel/reveal.js

2013-07-09
# Python frameworks
* https://github.com/mitsuhiko/flask
* Django

2013-07-09
# What is an asset (computer science)

2013-07-09
# Linux LPI certification
* http://2013.rmll.info/fr/lpi.html
* http://www.lpi.org/

2013-07-12
# Ideal place of work
* Importance of human comfort
* Criterials
* Examples of real companies
* 
2013-07-12
# PHP Testing frameworks comparison
* compare of simple tests
 * SimpleTest
 * PHPUnit
 * atoum https://github.com/atoum/atoum
* methodology
 * create a dev vm
 * install lamp
 * install frameworks
 * testing some examples

2013-07-18
# Version control systems use for code fluctuation organization for TYPO3 projects
* hooks VS xlasses
* core
* third party extensions
* version in branches
* code compare
* original code modification maintain
* risks from them
* risks from you
* case by case
* using compare/merge tools

2013-07-21

server security
	basic stuff http://plusbryan.com/my-first-5-minutes-on-a-server-or-essential-security-for-linux-servers
	port changing http://www.linux.com/learn/tutorials/305769-advanced-ssh-security-tips-and-tricks
	
Сравнение режимов функционирования PHP
	Кратко 5 основных методов
		http://www.howtoforge.com/forums/archive/index.php/t-33167.html
	В листинге билетов блога вывести тэги после каждой записи
	Пройтись по черновикам, сделать статьи

Материалы с конференций
	DrupalCon videos
		http://www.youtube.com/user/DrupalAssociation?feature=watch
	PHP Benelux
		http://www.youtube.com/user/PHPBenelux/videos
	    	http://www.youtube.com/watch?v=6Ykcnzbj1ME
	    	http://www.youtube.com/watch?v=A6pONIcs6mE
	phpDay Italy
		https://joind.in/event/view/1184/slides#event-tabs
	symfony Live
		http://lanyrd.com/2013/symfony-live/slides/
	zend-vs-symfony
		http://www.zfort.com/blog/zend-vs-symfony/

bash if
	http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
	http://aral.iut-rodez.fr/fr/sanchis/enseignement/bash/ar01s10.html
	
Отчёты на блоге
	OSM Var-1
	Pytong’13
	T3UNI13
	OSM Var-2
	WebPerf Marseille

Les exceptions
	Картографические исключения, необычная планировка, анализ, почему именно так. Иногда необъяснимо. Путешествие.
	Пример : странные исключения карты Парижа

path finding library
	jump point
	https://github.com/qiao/PathFinding.js/tree/master/visual
	http://harablog.wordpress.com/2011/09/07/jump-point-search/

3LizPoi
	http://www.13accessible.com/web/app.php/balise/details/155/voir
	http://lizpoi.3liz.com/orange/index.php/lizpoi/map/

TYPO3 FE testing
	http://buzz.typo3.org/article/testing-a-typo3-extension-on-travis/
	http://www.zealake.com/2012/12/25/run-all-your-javascript-qunit-tests-on-every-commit/
	http://www.zealake.com/2012/12/25/automated-build-for-your-front-end-javascript-code/
	http://www.slideshare.net/Phase2Technology/testing-withghostsandgherkins



29-07-2013

# CSS automated tests

* http://needle.readthedocs.org/en/latest/
* https://github.com/Huddle/PhantomCSS

2013-08-27

# TYPO3 Uncache

The must plugin by Claus Due for TYPO3 v.6 extension development.

It simply disables all caches. 

http://typo3.org/extensions/repository/view/uncache

Do not forget to disable the plugin in production stage.


2013-09-19
# Server optimization
https://www.digitalocean.com/community/articles/how-to-install-and-configure-varnish-with-apache-on-ubuntu-12-04--3

2013-09-24
# CI server for PHP
- http://stackoverflow.com/questions/9148908/what-is-the-best-ci-server-for-a-php-web-application
 * https://www.atlassian.com/software/bamboo
- http://forums.atlassian.com/thread.jspa?threadID=17678
- http://jenkins-ci.org/
- https://circleci.com/
- https://www.codeship.io/
- https://travis-ci.org/
 * http://net.tutsplus.com/tutorials/tools-and-tips/travis-ci-what-why-how/ 
- https://www.cisimple.com/
- https://hosted-ci.com/
- http://wercker.com/ 
- http://code.google.com/p/xinc

2013-09-24
# PHP design Patterns
* https://github.com/domnikl/DesignPatternsPHP
* http://blog.ircmaxell.com/2013/09/beyond-design-patterns.html

2013-09-24
# TYPO3 & Varnish
* https://github.com/snowflakech/typo3-varnish/tree/master/res
* http://typo3.org/extensions/repository/view/moc_varnish
* https://speakerdeck.com/thijsferyn/varnish-workshop-dpc13
* http://forge.typo3.org/projects/team-ciserver/wiki/VCL
* http://pastebin.com/fWV2ne0N
* http://pastebin.com/HmPbW2Ns
* http://fr.slideshare.net/revsbech/super-performing-websites-with-typo3
* http://docs.typo3.org/typo3cms/extensions/varnish/1.0.3/
* http://aaronbonner.io/post/14125553826/testing-varnish-vcl-syntax

2013-09-25
# zMQ
* http://zeromq.org/
* http://php.zero.mq/

2013-09-25
#wkhtmltopdf on ubuntu server 12.04

Installing wkhtmltopdf on Ubuntu Server 12.04 to make PDF documents from HTML.

	apt-get install wkhtmltopdf
	apt-get install xvfb
	echo 'xvfb-run --server-args="-screen 0, 1024x768x24" /usr/bin/wkhtmltopdf $*' > /usr/bin/wkhtmltopdf.sh
	chmod a+x /usr/bin/wkhtmltopdf.sh
	ln -s /usr/bin/wkhtmltopdf.sh /usr/local/bin/wkhtmltopdf
	wkhtmltopdf http://www.google.com output.pdf

2013-09-28

# Changing main partition size on VMWare Linux machine

- Boot from Ubuntu Live CD
  * Change bootscreen apperance time to 10000
  * Put Ubuntu Live CD into Data Storage
- Use gparted
  * Under root
  * Attention to swap partition

References : 

* http://www.keithdmitchell.com/2012/01/05/how-to-boot-from-an-iso-with-vmware-vsphere/
* http://blog.mwpreston.net/2012/06/22/expanding-a-linux-disk-with-gparted-and-getting-swap-out-of-the-way/


2013-01-01

# Script to include gists into base repository

2013-11-20

# Controlling Arduino through the network

* concept
  * http://projects.sindrelindstad.com/how-to-led-arduino-php-proc/
  * http://ediy.com.my/index.php/blog/item/15-control-arduino-via-php-easyphp
  * http://conoroneill.net/connecting-an-arduino-to-raspberry-pi-for-the-best-of-both-worlds/
  * http://arduino.ru/forum/programmirovanie/arduino-uno-php-interfeis
* arduino docs
  * http://playground.arduino.cc/interfacing/processing
  * http://arduino.cc/en/Tutorial/HomePage
* wifi
  * http://arduino.ru/Hardware/ArduinoWiFiShield
  * http://cxem.net/uprav/uprav30.php
* radio
  * http://www.ebay.co.uk/itm/Hotsell-433Mhz-RF-Transmitter-Receiver-Kit-For-Arduino-Raspberry-Pi-Wireless-/131027454390?pt=UK_BOI_Electrical_Components_Supplies_ET&hash=item1e81d849b6
  * http://www.pjrc.com/teensy/td_libs_VirtualWire.html

# Linux Netbook

* https://www.system76.com/laptops/
* http://www.dell.com/fr/entreprise/p/xps-13-linux/pd
* http://configure.euro.dell.com/dellstore/config.aspx?oc=sbnb2303&model_id=xps-13-9333&c=fr&l=fr&s=bsd&cs=frbsdt1
* http://www.billingham.ca/LOL/Lenovo-thinkpad-T420s.html

2013-11-22

# Discovering YUI

* http://yuilibrary.com/yui/docs/node/node-insert.html
* http://yuilibrary.com/yui/docs/node/
* http://yuilibrary.com/yui/docs/examples/
* http://yuilibrary.com/yui/docs/node/ducks.html
* http://yuilibrary.com/yui/docs/event/simulate.html

# Vagrant article

Vagrantfile generators

* http://vmg.slynett.com/
* https://puphpet.com/
* http://rove.io/

Vagrant workflow

* http://dougalmatthews.com/2011/Feb/27/my-vagrant-workflow/

To read

* https://wiki.opscode.com/display/chef/Vagrant
* https://github.com/jedi4ever/veewee

## 2013-11-25

### Self-hosted cloud storage

	http://www.reddit.com/r/linux/comments/1efdnd/sparkleshare_owncloud_or_seafile/
	http://crowdranking.com/crowdrankings/t610g0--the-best-self-hosted-cloud-storage-solution
	http://blog.patshead.com/2013/04/self-hosted-cloud-storage-solution-owncloud-vs-sparkleshare.html

## 2013-11-26

### Galen Framework

	http://galenframework.com/docs/about/
	http://mindengine.net/post/2013-11-16-tdd-for-responsive-design-or-how-to-automate-testing-of-website-layout-for-different-devices/
	http://galenframework.com/
	https://github.com/ishubin/galen
	http://galenframework.com/docs/reference-working-in-command-line/
	https://github.com/ishubin/galen-workshop
	http://samples.galenframework.com/tutorial1/tutorial1.html
	http://galenframework.com/docs/reference-galen-test-suite-syntax/#RunninginSeleniumGrid
	https://code.google.com/p/selenium/wiki/Grid2
	http://www.packtpub.com/sites/default/files/downloads/Distributed_Testing_with_Selenium_Grid.pdf

### Personal Kanban

	http://gotocon.com/dl/2011/GeekNights/personal_kanban_stop_wasting_your_life.pdf
	http://dera.ioe.ac.uk/5952/1/download%3Fid%3D17238%26filename%3Dleadership-development-and-personal-effectiveness.pdf

### Responsive design testing

	http://bradfrostweb.com/demo/ish/?url=http://3200tigres.wwf.fr
	http://vanamco.com/ghostlab/
	http://html.adobe.com/edge/inspect/
	http://blog.mattbailey.co/post/50337824984/grunt-synchronised-testing-between-browsers-devices
	https://github.com/marstall/shim
	http://daker.me/2013/07/testing-your-responsive-design-with-phantomjs.html
	casper js script
	http://responsivetest.net/





2013-12-02

# Cool stuff (site section)

* http://tympanus.net/codrops/2013/11/27/svg-icons-ftw/ svg icons
* http://ionicframework.com/ HTML5 mobile framework
* http://threejs.org/ 3D framework
* http://www.videogular.com/ Video JS player responsive
* http://beta.swipe.to/markdown/ presentation in markdown
* http://www.gsmarena.com/sailfishbased_jolla_hits_the_shelves_today-news-7270.php https://sailfishos.org/
* http://devdocs.io/ Lot's of API docs
* http://docpad.org/ Rapid web devlopement
* http://davidshariff.com/quiz/ Testing CSS skills
* http://www.t3ee.org/fileadmin/cluj/TYPO3_Hosting_Questions_at_T3EE13.pdf
* Tiny JS hacks to make Your code smarter https://gist.github.com/fedir/7750551
* http://www.youtube.com/watch?v=XMfz8Cbyxl0

2013-12-03

# Cool stuff

* http://www.matthias-witte.net/tutorial-overview/
* https://github.com/mwitte/Witte-Kanban

2013-12-04

# Cool stuff

* http://oembed.com/
* http://forge.typo3.org/projects/typo3v4-mvc/wiki/Fluid_Widgets

* http://stackoverflow.com/a/10739483/634275 Ajax in Extbase
* http://forge.typo3.org/projects/typo3v4-mvc/wiki/Fluid_Widgets
* https://twitter.com/agnoster/status/44636629423497217
* http://tartley.com/?p=1267
* https://f-droid.org/
* http://www.f-secure.com/static/doc/labs_global/Research/Mobile_Threat_Report_Q3_2013.pdf

# Developer's Humor

* https://twitter.com/hipsterhacker
* https://twitter.com/NeckbeardHacker
* https://twitter.com/iamdevloper


#### Thoughts // Thoughts from the other side of the Internet // Microblogging

2013-1205

* Phonegap boox
 * http://www.amazon.com/PhoneGap-Essentials-Building-Cross-Platform-Mobile/dp/0321814290/
* Programming for kids
 * http://www.amazon.com/Hello-World-Computer-Programming-Beginners/dp/1617290920/
 * http://www.amazon.com/Computational-Fairy-Tales-Jeremy-Kubica/dp/1477550291/ref=pd_sim_b_8
 * http://www.amazon.com/Super-Scratch-Programming-Adventure-Program/dp/1593274092/
 * meld comparing

2013-12-06

* https://github.com/gnab/remark
* https://github.com/getpelican/pelican
* http://ebooknew.net/
* http://yakovfain.com/2013/06/30/how-we-write-a-book-for-oreilly/

2013-12-09

* http://www.kormoc.com/2012/11/18/convert-a-php-object-to-an-array/
* Сон в красном тереме
* https://www.youtube.com/watch?v=KzufrpGxWQU

2013-12-11

* http://neos.typo3.org/homepage.html
* http://cibonfire.com/
* http://dev.by/blogs/main/kak-vyyti-pobeditelem-iz-programmerskogo-sobesedovaniya
	* http://www.restlessprogrammer.com/2013/09/hacking-coding-interview.html
* SSL Hacking
	* http://www.xakep.ru/magazine/xa/125/026/1.asp 
	* http://www.thoughtcrime.org/projects.html
	* http://www.thoughtcrime.org/software/sslstrip/
* http://forge.typo3.org/projects/typo3v4-mvc/wiki/Default_Orderings_and_Query_Settings_in_Repository

2013-12-12

* fedext
 * last version compatible 4.5
* elastic search
 * https://github.com/lindstromhenrik/elasticsearch-analysis-file-watcher-synonym
 * https://github.com/nickdunn/elasticsearch#es-multilingual-search
 * https://gist.github.com/clintongormley/4095280
 * http://typo3.org/extensions/repository/view/sjr_offers


2013-12-13

* http://blog.typoplanet.de/2010/01/27/the-repository-and-query-object-of-extbase/
* http://docs.typo3.org/neos/TYPO3NeosDocumentation/
* http://www.typo3forum.net/forum/alle-anderen-extensions/49581-extbase-get-post-paramter-holen.html
* http://www.kaktusteam.de/uploads/media/extbase.pdf
* http://wiki.typo3.org/Fluid#f:for
* http://wiki.typo3.org/Extbase_HowTos

2013-12-16

* dynamic openlayers image markers
	* svg string generation from data
	* convert svg to png
	* http://antimatter15.com/wp/2010/07/javascript-to-animated-gif/
	* http://stackoverflow.com/questions/13416800/how-to-generate-an-image-from-imagedata-in-javascript
	* http://stackoverflow.com/questions/923885/capture-html-canvas-as-gif-jpg-png-pdf
	* http://www.nihilogic.dk/labs/canvas2image/
	* http://caniuse.com/canvas

2013-12-17

 * bash git prompt
	* http://code-worrier.com/blog/git-branch-in-bash-prompt/
	* https://help.ubuntu.com/community/CustomizingBashPrompt
 * zsh
	* http://fr.slideshare.net/jaguardesignstudio/why-zsh-is-cooler-than-your-shell-16194692
 * ROS
	* http://www.ros.org/
	* http://www.willowgarage.com/pages/software/ros-platform
	* http://wiki.ros.org/
	* http://www.packtpub.com/learning-ros-for-robotics-programming/book
* css masks
	* http://blog.rjzaworski.com/2011/03/masking-images-with-css-and-jquery/
* extbase
	* http://blog.typoplanet.de/2012/04/19/difference-between-entity-and-valueobject/
	* http://blog.typoplanet.de/2010/01/27/the-repository-and-query-object-of-extbase/
	* http://blog.typoplanet.de/2009/07/16/a-walk-trough-the-persistence-layer-of-extbase/
* json & yaml (extension builder case)
	* http://jsontoyaml.com/
	* http://yamltojson.com/
	* http://jsonviewer.stack.hu/

2013-12-28

* http://www.ozon.ru/context/detail/id/5430638/

2014-01-02

* http://habrahabr.ru/post/207978/
* http://www.smashingmagazine.com/2013/12/27/open-sourcing-projects-guide-getting-started/
* http://roboclub.dn.ua/
* xhprof
 * http://erichogue.ca/2011/03/linux/profiling-a-php-application/
 * http://techportal.inviqa.com/2009/12/01/profiling-with-xhprof/
* formation securité web
 * http://www.valtech-training.fr/formation/developpement-web/hacking/
 * http://www.orsys.fr/formation-securite-application-web.asp
 * http://www.orsys.fr/formation-securite-avancee-application-web.asp
 * http://www.orsys.fr/formation-php5-securite.asp

2014-01-03
* install sun java on linux mint
 * http://www.techlw.com/2012/07/install-sun-java-6-or-7-in-ubuntu-1204.html
 * http://samuelcroset.com/content/how-install-sun-java-6-linux-mint-13


