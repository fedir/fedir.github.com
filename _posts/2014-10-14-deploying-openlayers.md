---
comments: true
date: 2014-10-14
layout: post
slug: deploying-openlayers
title: Deploying OpenLayers
categories:
- web
tags:
- webperformance
- openlayers
---

OpenLayers should be minified and compressed before to be deployed to production.

### Building
    
    python build.py light-custom webmap-light-custom.js

### Example of light profile

Depends, which elements You are using in Your app

    [first]

    [last]

    [include]
    OpenLayers/Map.js
    OpenLayers/Icon.js
    OpenLayers/Marker.js
    OpenLayers/Kinetic.js
    OpenLayers/Projection.js
    OpenLayers/Layer/Vector.js
    OpenLayers/Layer/OSM.js
    OpenLayers/Layer/Bing.js
    OpenLayers/Layer/WMS.js
    OpenLayers/Layer/Google/v3.js
    OpenLayers/Layer/Markers.js
    OpenLayers/Popup/FramedCloud.js
    OpenLayers/Control/Navigation.js
    OpenLayers/Control/Zoom.js
    OpenLayers/Control/Attribution.js
    OpenLayers/Control/SelectFeature.js
    OpenLayers/Control/Panel.js
    OpenLayers/Control/PanPanel.js
    OpenLayers/Control/LayerSwitcher.js
    OpenLayers/Renderer/SVG.js
    OpenLayers/Renderer/VML.js
    OpenLayers/Format/GeoJSON.js
    OpenLayers/Protocol/HTTP.js
    OpenLayers/Strategy/Fixed.js
    OpenLayers/Strategy/BBOX.js
    OpenLayers/StyleMap.js
    OpenLayers/Rule.js
    OpenLayers/Filter/Comparison.js
    OpenLayers/Filter/Logical.js

    [exclude]

## Include custom JS / CSS / images

### HTML includes

    <script src="/lib/webmap-light-custom.js" type="text/javascript"></script>
    <link rel="stylesheet" media="all" href="/typo3conf/ext/stratis_openlayers/resources/external/openlayers/theme/default/style.css" />

### JS 

Specify image folder

    OpenLayers.ImgPath = "/custom/path/openlayers/img/";

Disable default theme

    map = new OpenLayers.Map('map', {
	    theme: null,
	    ...

## Ressources

* http://docs.openlayers.org/library/deploying.html
* http://trac.osgeo.org/openlayers/wiki/Profiles
