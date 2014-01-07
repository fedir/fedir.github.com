---
comments: true
date: 2014-01-06
layout: post
slug: gitlab-projects-management-from-shell
title: Gitlab projects management from shell
categories:
- web
tags:
- blog
- git
- gitlab
---

If You would like to script Gitlab group and projects creation, users management, You could manage Gitlab and its projects from shell.

For actual version of Gitab, I could recommend python-gitlab, which works flawessly with Gitlab API V3.

## Installation

Clone the project from https://github.com/gpocentek/python-gitlab :

	git clone https://github.com/gpocentek/python-gitlab.git
	cd python-gitlab
	python setup.py install

If You will have errors during installation, try to install python-pip :

	sudo apt-get install python-pip

## Configuration

Create the configuration file :

	vim ~/.python-gitlab.cfg

With following contents :

	[global]
	default = local
	ssl_verify = true
	
	[local]
	url = https://gitlab.url/
	private_token = PRIVATE_TOKEN_FROM_YOUR_ACCOUNT
	
	[distant]
	url = https://distant.gitlab.url/
	private_token = PRIVATE_TOKEN_FROM_YOUR_ACCOUNT
	ssl_verify = false

## Documentation

	gitlab --help
	gitlab project help
	gitlab team help
	gitlab team-project help
	gitlab group help
	gitlab team help
	gitlab user help
	gitlab group-member help

## Usage

	gitlab project list
	gitlab team list
	gitlab user list
	gitlab group create --name=project --path=project
	gitlab project create --name=cg06-content --namespace-id=3
	gitlab group-member create --group-id=3 --user-id=4 --access-level=50

## Ressources

* https://github.com/gpocentek/python-gitlab
* http://gauvain.pocentek.net/taxonomy/term/62
