---
layout: post
title: "TYPO3 BE profiling with XHProf profiling"
category : "lessons"
tags : ["typo3","performance","optimization", "profiling", "xhprof"]
---

# TYPO3 BE profiling with XHProf profiling

## The Problem 

Recenlty I had a performance problem related to use of some 3rd party extensions. As the tagert of the performance optimization was in the BE of TYPO3, existing profilers, available on TYPO3 repository were not useful, as they all oriented FE.

### Profiler choise

* xdebug
* zend_debugger
* apd
* xhprof

#### apd

Works well. Very easy to install. 

Easy to launch profiling. Just add a function in the beginnig of Your script.

    apd_set_pprof_trace();

The representation of statistics is not so deep, and takes too much time the result because of statistics analyzer pprofp, which is not compiled, just a script.

So, this tool is useful only for simple scripts profiling. I would not advice it to make TYPO3 BE profiling.

#### xdebug & zend_debugger in eclipse

Normally I use them with an adapter integrated in Eclipse, and it works well, but not this time.

xdebug is more complicated to install. zend_debugger looks a litte bit better, but You should register to get it first. And it's not really open source, a binary.

In our infrastructure we uses some complex system of network mounts and symlinking, so it was too much complicated for xdebug and zend_debugger to make connection between the requested script and physical file. Maximum what I could get with latest Eclipse PDT and PHP5.3 : break on first line, but not all breakpoints of my need. Probably there is some way to get it work, I had not enough time for debugging this time.

#### xhprof

Simple to use. 

A little bit complicated to configure in the begining if You would like readable statistics. 

There are lots of entry points in BE. In my case, the problem was in mod.php, so I used typo3/mod.php script.i

You should make a vhost for xhprof to get the interface : http://xhprof.local/

Include in the begining of the code :

	$xhprofProjectKey = 'projectkey';
	require_once "/path/xhprof_lib/utils/xhprof_lib.php";
	require_once "/path/xhprof_lib/utils/xhprof_runs.php";
	xhprof_enable();

Include in the end of the code :

	$xhprof_data = xhprof_disable();
	$xhprof_runs = new XHProfRuns_Default();
	$run_id = $xhprof_runs->save_run($xhprof_data, $xhprofProjectKey);
	echo "XHProf results : http://xhprof.local/index.php?run=$run_id&source=$xhprofProjectKey";

Visit http://xhprof.local/ to check the results

Use graphviz to make maps. And You could use xhgui, which makes great interfaces for collected statistics.

Great stuff.

### The result

It looks Ok now. I made profiling of several sites, modified 3rd party extension, and shared patches with ex

## References

* http://stackoverflow.com/questions/21133/simplest-way-to-profile-a-php-script
* http://martinsikora.com/compiling-apd-for-php-54
* http://www.thierryb.net/pdtwiki/index.php?title=Using_PDT_:_Installation_:_Installing_the_Zend_Debugger
* http://stackoverflow.com/questions/2359712/remote-debugging-wont-stop-at-breakpoints
* http://net.tutsplus.com/tutorials/php/advanced-codeigniter-profiling-with-xhprof/
* http://phpmaster.com/the-need-for-speed-profiling-with-xhprof-and-xhgui/
* http://www.lornajane.net/posts/2013/installing-xhgui
* http://techportal.inviqa.com/2009/12/01/profiling-with-xhprof/
* https://github.com/preinheimer/xhprof
* https://github.com/facebook/xhprof
* http://pecl.php.net/package/apd/1.0.1




