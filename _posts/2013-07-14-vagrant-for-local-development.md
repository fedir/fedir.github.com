--- 
comments: true 
date: 2013-07-04
layout: post 
slug: vagrant-for-local-development
title: Using Vagrant for local development
teaser: Some notes during Vagrant-based infrastructure implementation for local LAMP development
categories: 
- web
- blog
tags: 
- vagrant
- infrastructure
---

## What we will do

For the moment, I've an idea of use of independent environments, which could be shared between our devs team, which works on Linux and Windows workstations.

So, file ressources could be hosted on parent OS and virtual machine contains real development environment, and the logic is porcessed by the virtual machine, which contains the environment, identic to production server.

The dB is shared between all developers, but each developer has it's own virtual environment, which is shared between 

Each vagrant machine of each developer could be managed from an external location by SSH, to provide automation.

Web developer works in a folder which is shared between Vagrant and his host machine.

## Theory

### Introduction to Vagrant concept

There are boxes, real virtual machines models, which You could turn inside Your workstation. You could find a big list of available vagrantboxes [here][1]. You could use some box, personalize it and distribute it.

### Vagrantfile

It's a configuration file, it contains information how Your virtual environment will be created, how it will communicates with parent OS.

## Practice

### VM machine creation and use

    $ mkdir vagrant_www/www -p
    $ cd vagrant_www
    $ echo "<h1>Hello from a Vagrant VM</h1>" > www/index.html
    $ vagrant init
    $ vagrant box add precise64 http://files.vagrantup.com/precise64.box
    $ vagrant ssh

### Internal VM operations
* Install basic LAMP stack
* Change default Apache2 user to vagrant
* Change default vhost to /vagrant/www
* Restart Apache

## Ressources
* Vagrant intro [http://docs-v1.vagrantup.com/v1/docs/getting-started/index.html][2]
* Access Vagrant machine from an external location http://stackoverflow.com/questions/12176159/connecting-to-a-vagrant-vm-externally

[1]:http://www.vagrantbox.es/
[2]:http://docs-v1.vagrantup.com/v1/docs/getting-started/index.html
