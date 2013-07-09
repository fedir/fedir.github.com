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
