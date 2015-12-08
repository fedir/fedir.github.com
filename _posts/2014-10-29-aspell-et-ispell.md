---
comments: true
date: 2014-10-29
layout: post
slug: aspell-et-ispell
title: aspell et ispell (fr)
categories:
- web
tags:
- blog
---

Et voilà, on va apprendre, comment vérifier ses propres erreurs grammaticales avec les outils open-source en ligne de commande.

Comment ça marche :

Vérification d'un mot simple :

aspell

    echo "corrigér" | /usr/bin/aspell -a
    echo "corrigér" | /usr/bin/aspell -a | sed 's/.*: //g' | tr ',' '\n' | sed 's/ //g' | grep '*' -v | sed '/^\s*$/d'

ispell    

    echo "corrigér" | /usr/bin/ispell -a
    echo "corrigér" | /usr/bin/ispell -a | sed 's/.*://g' | sed 's/@.*//g' | tr ',' '\n' | sed 's/ //g' | grep '*' -v | sed '/^\s*$/d'

En plus, on peut utiliser ces logiciels pour les applications externes, pour vérifier le syntaxe de vos commits git et svn, pour écrire des billets de blogs etc.

Ces outils marchent aussi avec des phrases et fichiers entieres.

## Ressources pour creuser un peu plus

* http://xahlee.info/comp/aspell_spell_checking.html
* http://stackoverflow.com/questions/12799741/run-spell-check-on-multiple-files-and-display-any-incorrect-words-in-shell-scrip
* http://doc.ubuntu-fr.org/aspell
* http://stackoverflow.com/questions/7245658/where-to-find-french-dictionary-for-ispell
* http://mintaka.sdsu.edu/GF/bibliog/ispell/multi.html
* http://serverfault.com/questions/8567/grammar-checker-for-linux
* http://doc.ubuntu-fr.org/correction_orthographique
