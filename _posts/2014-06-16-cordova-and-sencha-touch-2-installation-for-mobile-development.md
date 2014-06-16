---
comments: true
date: 2014-06-16
layout: post
slug: cordova-and-sencha-touch-2-installation-for-mobile-development
title: Cordova and Sencha Touch 2 installation for mobile development
categories:
- web
tags:
- cordova
- sencha
---

How to install Cordova and Sencha Touch 2 for multiplatform development.
Quick notes for myself, but could be useful for somebody, who needs help.

## Installation

### Install NodeJS 

http://nodejs.org/

### Install Cordova

    npm install -g cordova

Create Your project

	cordova create Demo io.github.fedir Demo

Pour faire la compilation il faut installer les environnements de compilations :

#### More about Cordova installation part

* Cordova tutorial (FR) http://www.grafikart.fr/tutoriels/cordova/apache-cordova-installation-432
* Cordova tutorial video (FR) https://www.youtube.com/watch?v=VjlIECYXKlU
* Cordova official docs http://cordova.apache.org/docs/fr/3.5.0/

### Android

#### Installation dependencies

#### Java SDK (7)

http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html

#### Android SDK

http://developer.android.com/sdk/index.html
http://developer.android.com/sdk/installing/bundle.html

#### Apache Ant

Upgrade for Mac : http://gauravstomar.blogspot.fr/2011/09/installing-or-upgrading-ant-in-mac-osx.html
Download http://ant.apache.org/bindownload.cgi
Move to /usr/loca/, add a path

#### Compilation

    cordova platforms add android

Open project
Create new AVD
Running app

    cordova emulate android
    cordova run android

Beaucoup plus rapidement 

    run android
    cordova build
    cordova build android

config.xml
http://cordova.apache.org/docs/en/3.5.0/guide_platforms_android_config.md.html#Android%20Configuration

#### Publishing

http://developer.android.com/distribute/googleplay/start.html

### iOS

#### Installation dependencies

XCode

* https://developer.apple.com/downloads/index.action#
* http://cordova.apache.org/docs/en/3.5.0/guide_platforms_ios_index.md.html#iOS%20Platform%20Guide

    cordova platforms add ios

#### Publishing

Apple AppStore 90E

## Install Sencha Touch 2 

### Install Sencha CMD

http://www.sencha.com/products/sencha-cmd/download
