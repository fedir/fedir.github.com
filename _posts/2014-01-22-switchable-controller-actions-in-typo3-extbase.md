---
comments: true
date: 2014-01-22
layout: post
slug: switchable-controller-actions-in-typo3-extbase
title: Switchable controller actions in TYPO3 Extbase
categories:
- web
tags:
- blog
---

When You devloping TYPO3 modules with Extbase, You could have a situation, when You have multiple variations of the same plugin, in this example, I will show how to 

## Code

First, You need to register the flexform to configure the plugin in back end. Second, You should add actions, which would be available for each plugin's configuration variation.

### ext_tables.php

	Tx_Extbase_Utility_Extension::registerPlugin(
		$_EXTKEY,
		'Structures',
		'Structures'
	);
	$pluginSignature = str_replace('_','',$_EXTKEY) . '_structures';
	$TCA['tt_content']['types']['list']['subtypes_addlist'][$pluginSignature] = 'pi_flexform';
	t3lib_extMgm::addPiFlexFormValue($pluginSignature, 'FILE:EXT:' . $_EXTKEY . '/Configuration/FlexForms/flexform_structures.xml');


### flexform_structures.xml

	<T3DataStructure>
	 <sheets>
	  <sDEF>
	   <ROOT>
		 <TCEforms>
		  <sheetTitle>Function</sheetTitle>
		 </TCEforms>
		 <type>array</type>
		 <el>
		  <switchableControllerActions>
		   <TCEforms>
			 <label>Select function</label>
			 <config>
			  <type>select</type>
			  <items>
				
				<numIndex index="0">
				 <numIndex index="0">List</numIndex>
				 <numIndex index="1">Structure->list</numIndex>
				</numIndex>
				
				<numIndex index="1">
				 <numIndex index="0">Map</numIndex>
				 <numIndex index="1">Structure->map</numIndex>
				</numIndex>
				
			   </items>
			 </config>
		   </TCEforms>
		  </switchableControllerActions>
		 </el>
	   </ROOT>
	  </sDEF>
	 </sheets>
	</T3DataStructure>

## Ressources

* https://gist.github.com/michaelorionmcmanus/840913
* http://www.typo3.net/forum/thematik/zeige/thema/115451/
* http://forge.typo3.org/issues/31322
