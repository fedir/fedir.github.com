--- 
comments: true 
date: 2018-01-28
layout: post 
slug: starting-go-on-osx.md
title: Starting Go on OSx (macOS)
teaser: Simple and fast start to install and configure Golang on OSx (macOS)
categories: 
- web
- blog
tags: 
- golang
- development
---

Installing and configuring Go on OSx (macOS) for further developement.

To be sure, what You have no older version installed, please remove all installed go packages.

    rm -rf /usr/local/go/

Next step is to install latest Go version. 

On macOS You have 2 choises : or to use Go sources and to install the package manually, by downloading and installing it in the folder, choosen by Your own choise; or to install via automatic installer. With installer it's will be more simple to start.

Download macOS (OSx) installer and install it : https://golang.org/doc/install

Add path variables into Your .profile file :

    export GOPATH=$HOME/go
    export PATH=${GOPATH}/bin:${PATH}
    export GOROOT=/usr/local/go
    export PATH=${GOROOT}/bin:${PATH}

Now You could start to play with Go.

You could use pretty any IDE, as Go synatx is quite simple.

## References

* https://stackoverflow.com/questions/32115229/go-1-5-error-imports-runtime-c-source-files-not-allowed-when-not-using-cgo/32115271
* https://golang.org/doc/install
* https://gist.github.com/fedir/c1e2531a5add831864939589b7cee6e7
* https://github.com/derekparker/delve/issues/514
* https://rominirani.com/setup-go-development-environment-with-visual-studio-code-7ea5d643a51a
* https://github.com/derekparker/delve
* https://github.com/derekparker/delve/blob/master/Documentation/installation/osx/install.md
* https://marketplace.visualstudio.com/items?itemName=lukehoban.Go

