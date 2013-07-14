--- 
comments: true 
date: 2013-07-14
layout: post
slug: boost-vagrant
title: Boost Vagrant
teaser: Several tips how to make Your Vagrant to turn faster.
categories: 
- blog
- web
tags: 
- vagrant
- performance
---

## Memory

The box, which You've used to create Your Vagrant virtual machine, could have not enough memory ressources to run fast Your application, dependds, what You are doing.
Default precise64 had 384 Mb of memory, when I raised it to 1024 Mb, my app was much more reactive.
You could do it in Virtualbox properties of Your machine, when it's down.

## Network

Vagrant works much faster with NFS on Unix systems (both Mac and Linux).

To enable NFS, add following elements to Your Vagrantfile :

    config.vm.network :hostonly, "192.168.33.10"
    config.vm.share_folder("v-root", "/vagrant", ".", :nfs => true)

On Windows NFS doesn't work, but it works not so bad with default Virtualbox shared folders.

## Ressources

* https://coderwall.com/p/uaohzg
* http://docs-v1.vagrantup.com/v1/docs/nfs.html
* http://dannemanne.com/posts/increased_performance_in_vagrant
