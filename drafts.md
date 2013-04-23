drafts before to be published after

#TYPO3 forking#

* https://github.com/lolli42/TYPO3-CMS-Catharsis
* http://forum.typo3.org/index.php?t=msg&th=194405
* https://github.com/dmitryd/TYPO3v4-Core
* https://travis-ci.org/lolli42/TYPO3-CMS-Catharsis

#chrome extensions i use#
* ga debugger
* cookies editor
* http headers

#google analytics dev

#chromephp
    /opt/php5.3/bin/php -i | grep include_path
        include_path => .:/opt/php5.3/lib/php => .:/opt/php5.3/lib/php
    cd /opt/php5.3/lib/php
    mkdir includes 
    cd includes 
    wget https://raw.github.com/ccampbell/chromephp/master/ChromePhp.php
    cd .. 
    chmod -R a+rx includes/
    vim /opt/php5.3/php.ini
    auto_prepend_file = /opt/php5.3/lib/php/includes/ChromePhp.php
* http://craig.is/writing/chrome-logger
* https://chrome.google.com/webstore/detail/chrome-logger/noaneddfkdjfnfdakjjmocngnfkfehhd
* http://www.php.net/manual/en/ini.core.php#ini.auto-prepend-file
* https://github.com/ccampbell/chromephp
* wget https://raw.github.com/ccampbell/chromephp/master/ChromePhp.php
