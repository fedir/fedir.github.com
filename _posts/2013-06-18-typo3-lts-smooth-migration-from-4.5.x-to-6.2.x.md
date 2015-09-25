--- 
comments: true 
date: 2013-06-18 
layout: post 
slug: typo3-lts-migration-from-4.5.x-to-6.2.x 
title: TYPO3 LTS migration from 4.5.x to 6.2.x
teaser: Notes about migration to new TYPO3 LTS
categories: 
- web 
tags: 
- typo3
- migration
- development workflow
---

Collection of links which could help to migrate Your installation and extensions from TYPO3 v.4.5 LTS/4.7 to TYPO3 v.6.2 LTS.

## Smooth migration extension

Marvelous extension which simplifies lot's of processes to analyze and to migrate the code of Your installation, what it becomes compatible with TYPO3 6.2.

Example of usage :

    php typo3/cli_dispatch.phpsh smoothmigration check help
    php typo3/cli_dispatch.phpsh smoothmigration check typo3-core-code-namespace
    php typo3/cli_dispatch.phpsh smoothmigration migrate help
    php typo3/cli_dispatch.phpsh smoothmigration migrate namespace

*) User "_cli_smoothmigration" must should be created

## References

* https://wiki.typo3.org/Upgrade#Upgrading_to_6.2_Long_Term_Support
* https://docs.typo3.org/typo3cms/InstallationGuide/UpgradeLTS/Index.html
* https://wiki.typo3.org/TYPO3_6.0_Extension_Migration_Tips
* https://wiki.typo3.org/TYPO3_6.2_Migration_Tips
- Smooth migration extension
  * http://forge.typo3.org/news/649
  * http://forge.typo3.org/projects/typo3cms-smoothmigration/wiki/Issues_which_need_a_check
  * http://forge.typo3.org/projects/typo3cms-smoothmigration/wiki
  * https://github.com/nxpthx/typo3-upgradereport
* https://jweiland.net/fileadmin/pdf/vortraege-praesentationen/upgrade-45_62-certifuncation.pdf
* http://stackoverflow.com/questions/28675796/how-to-upgrade-typo3-4-5-to-6-2
* http://stackoverflow.com/questions/24632107/typo3-documentation-for-upgrading-typo3-4-5-34-to-6-2-x
* cooluri http://www.bar54.de/blog/2013/02/cooluri-and-typo3-6-0-2-problem/
* http://www.typo3forum.net/forum/typo3-installation-updates/75145-typo3-update-4-5-6-2-frage-smoothmigration.html?language=en
* http://blog.scwebs.in/typo3/make-pibase-extension-compatible-to-typo3-6-2-x
* https://jweiland.net/video-anleitungen/typo3/typo3-projekte-verwalten/upgrade-auf-typo3-62.html
