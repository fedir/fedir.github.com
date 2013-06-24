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

# js ressources
 * http://casperjs.org/faq.html#faq-javascript < last item
 * http://ejohn.org/apps/learn
 * http://eloquentjavascript.net/contents.html
 * http://www.codecademy.com/tracks/javascript
 * http://www.javascriptenlightenment.com/JavaScript_Enlightenment.pdf
