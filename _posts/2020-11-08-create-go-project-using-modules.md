---
comments: true
date: 2020-11-08
layout: post
slug: create-go-project-using-modules
title: Create Go project using modules
categories:
- web
tags:
- blog
- go
---

Here I'll tell You how to create in a very simple way a new Go project using Go modules. It's the actual recommended way to create new projects in Go language.

Please change the directory to the location, where the app will be developed.

    cd {your-project-dir}

Now let's create a new prpject using  `go mod init` command:

    go mod init github.com/{your_username}/{repo_name}

Write Your app, starting from `main.go`.

    go build

When You will launch the build, the `go.mod` file will be automatically created, every dependency will be wrote inside.

Use Your favorite version control system, as `git` to commit everything.

Also You could use following commands: 

`go mod tidy` - for removing unwanted dependecies.

`go mod vendor` - to download all dependencies and it's placement into /vendor folder.


