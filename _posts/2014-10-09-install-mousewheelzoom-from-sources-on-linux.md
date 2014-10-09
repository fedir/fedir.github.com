---
comments: true
date: 2014-10-09
layout: post
slug: install-mousewheelzoom-from-sources-on-linux
title: "Install mousewheelzoom from sources on Linux Mint (Ubuntu based)"
categories:
- web
tags:
- blog
---

Nice tool on LInux to zoom whole the screen with Alt+Mousewheel.

### Installation script

    git clone https://github.com/tobiasquinn/gnome-shell-mousewheel-zoom.git
    cd gnome-shell-mousewheel-zoom
    sudo apt-get install python-xlib python-dbus git-core valac
    make
    sudo cp com.tobiasquinn.mousewheelzoom.gschema.xml /usr/share/glib-2.0/schemas/
    sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
    sudo mv gnome-shell-mousewheel-zoom/mousewheelzoom.py /usr/bin/
    ./mousewheelzoom 

### Ressources

* http://www.webupd8.org/2011/09/compiz-like-mousewheel-zoom-tool-for.html
* http://www.micahcarrick.com/gsettings-python-gnome-3.html
* http://unix.stackexchange.com/questions/48853/how-can-i-zoom-magnify-cinnamon-desktop-using-the-mouse-wheel
* https://github.com/tobiasquinn/gnome-shell-mousewheel-zoom
* http://askubuntu.com/questions/164820/default-screen-magnifier

