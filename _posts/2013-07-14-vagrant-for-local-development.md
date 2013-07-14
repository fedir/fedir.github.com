--- 
comments: true 
date: 2013-07-04
layout: post 
slug: vagrant-infrastructure-for-repeatable-local-development
title: Using Vagrant for repeatable local web development
teaser: Some notes during Vagrant-based infrastructure implementation for LAMP development.
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

The dB is shared between all developers, but each developer has it's own virtual environment, with files which are shared between guest and host.

Web developer works in a folder which is shared between Vagrant and his host machine. The files are externalized from virtual machine. So the developer could use tools from main OS to get maximum comfort and productivity.

Each developer machine could be accessed from an external location by a web browser.

Each vagrant machine of each developer could be managed from an external location by SSH, to provide maximum of automation.

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
    $ vagrant up
    $ vagrant ssh

### Vagrantfile content

    Vagrant::Config.run do |config|
      config.vm.box = "precise64"
      config.vm.forward_port 80, 8080
    end

### Web access

The host web server could be accessed from host http://127.0.0.1:8080/

### Internal VM operations
* Install basic LAMP stack
* Change default Apache2 user to vagrant
* Change default vhost to /vagrant/www
* Restart Apache

## Repeat until

If You have several developers, You could prepare the Vagrant box, distribute it and run on another workstation.

### Package the installation

You could package with Your current Vagrantfile, or create more generic Vagrantfile.pkg for packed box :

    $ vagrant package --vagrantfile Vagrantfile.pkg

### Recreate the box

On the workstation of another member of Your team :

    $ vagrant box add my_box /path/to/the/package.box
    $ vagrant init my_box
    $ vagrant up

The code exchange of web projects could be done trough version control system, as git (centralized repository using branches in case when You need).

## Ressources
* Vagrant intro http://docs-v1.vagrantup.com/v1/docs/getting-started/index.html
* Access Vagrant machine from an external location http://stackoverflow.com/questions/12176159/connecting-to-a-vagrant-vm-externally
* http://zeroturnaround.com/rebellabs/pragmatic-devops-how-to-create-your-first-environment-with-chef-and-vagrant/
* https://puppetlabs.com/blog/build-a-web-dev-environment-with-vagrant-and-puppet-part-2/
* http://higherlogic.com.au/2013/vagrant-virtualbox-puppet-osx/
* http://garylarizza.com/blog/2013/02/01/repeatable-puppet-development-with-vagrant/
* https://jtreminio.com/2013/05/introduction_to_vagrant_puppet_and_introducing_puphpet_a_simple_to_use_vagrant_puppet_gui_configurator/
* https://blog.serverdensity.com/many-projects-with-vagrant-and-puppet/

[1]:http://www.vagrantbox.es/
