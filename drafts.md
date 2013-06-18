drafts before to be published after

#TYPO3 forking#

* https://github.com/lolli42/TYPO3-CMS-Catharsis
* http://forum.typo3.org/index.php?t=msg&th=194405
* https://github.com/dmitryd/TYPO3v4-Core
* https://travis-ci.org/lolli42/TYPO3-CMS-Catharsis

#chrome extensions i use
* Google Analytics Debugger
* cookies editor
* HTTP Headers
* readability
* edit this cookie
* readability redux
* send to kindle
* print screen from google
* seo site tools
* pendule
* JSONView
* Open Frame in New Tab
* Chrome Logger
* QR-Code Tag Extension
* PHP Ninja Manual
* ColorZilla

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

# aggregate rss feeds
 * http://simplepie.org/wiki/tutorial/sort_multiple_feeds_by_time_and_date
 * https://gist.github.com/smajda/204194

# OpenLayers local install
 * http://dev.openlayers.org/releases/OpenLayers-2.12/readme.md
 * http://blog.rodolphe.quiedeville.org/index.php?post/2010/11/Installer-la-librairie-OpenLayers-sur-votre-server
 * http://trac.osgeo.org/openlayers/wiki/HowToDownload

# OpenLayers shortest path
 * http://wiki.openstreetmap.org/wiki/RU:Routing
 * http://wiki.openstreetmap.org/wiki/List_of_OSM_based_Services#Routing
 * http://map.project-osrm.org/
 * http://stackoverflow.com/questions/13481599/openstreetmap-how-to-get-the-shortest-travel-distance-by-car-between-multiple-po
 
# Tilemill
 * http://wiki.openstreetmap.org/wiki/TileMill
 * install : http://www.mapbox.com/tilemill/docs/linux-install/
 * crashcourse : http://www.mapbox.com/tilemill/docs/crashcourse/introduction/
 * exporting map : http://www.mapbox.com/tilemill/docs/crashcourse/exporting/
  * http://stackoverflow.com/questions/5569474/what-to-do-with-mbutil-export-for-tilemill-and-mapbox/5630112#5630112
  * https://gist.github.com/bmcbride/1818011
 * data
  * shapefiles : http://downloads.cloudmade.com/europe/western_europe/france
   * http://www.mapbox.com/tilemill/docs/guides/add-shapefile/
  * http://metro.teczno.com/ 
 * osm-bright
  * http://www.mapbox.com/tilemill/docs/guides/osm-bright-ubuntu-quickstart/
   * https://github.com/mapbox/osm-bright
 * layers
  * http://www.mapbox.com/tilemill/docs/manual/adding-layers/ 
  * theming : http://www.mapbox.com/tilemill/docs/guides/advanced-map-design/
 * exporting
 * mapbox.js : http://www.mapbox.com/mapbox.js/example/v1.0.0/draggable-marker/
 * leaflet
  * limit zoom level
  * api : http://www.mapbox.com/mapbox.js/api/
   * http://www.mapbox.com/mapbox.js/example/v1.0.0/draggable-marker/
 * mbtiles use
  * https://github.com/mapbox/mbtiles-spec
  * http://jsfiddle.net/kochizufan/rj4Eh/
  * https://pypi.python.org/pypi/umimbutil
  * https://github.com/Zverik/mbtiles-php
  * https://github.com/infostreams/mbtiles-php/
   * http://projects.bryanmcbride.com/php-mbtiles-server/leaflet.html
   * http://projects.bryanmcbride.com/php-mbtiles-server/openlayers.html
  * http://wiki.openstreetmap.org/wiki/MBTiles
  * https://github.com/bmcbride/PHP-MBTiles-Server
  * http://projects.bryanmcbride.com/ol_mbtiles/  
* creative writing tools
 * github full screen edit mode
 * FocusWriter

# js validation
 * numbers and letters /^[0-9a-zA-Z]+$/;  /^[0-9a-zA-Z]+$/.test(somevar)
 * numbers /^\d+$/
 * length somevar.length==10
 * money /[1-9]\d*(?:\.\d{0,2})?/
 * birthdate /^[0123][\d]\/[01][\d]\/[12][09][\d]{2}$/i

# begin python, if you are coming from php
 * http://www.php2python.com/
 * http://www.inspyration.org/tutoriels/debuter-python-lorsque-lon-vient-de-php
