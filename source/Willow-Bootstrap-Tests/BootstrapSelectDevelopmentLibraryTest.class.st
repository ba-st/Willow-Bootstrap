"
A BootstrapSelectDevelopmentLibraryTest is a test class for testing the behavior of BootstrapSelectDevelopmentLibrary
"
Class {
	#name : #BootstrapSelectDevelopmentLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ BootstrapSelectDevelopmentLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders
					equals: #('bootstrap-select-1.12.4' 'bootstrap-select-1.12.4/css' 'bootstrap-select-1.12.4/js' 'bootstrap-select-1.12.4/js/i18n');
				assert: GRPlatform current createdFiles
					equals:
					#('bootstrap-select-1.12.4/css/bootstrap-select.css' 'bootstrap-select-1.12.4/js/bootstrap-select.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ar_AR.js' 'bootstrap-select-1.12.4/js/i18n/defaults-bg_BG.js' 'bootstrap-select-1.12.4/js/i18n/defaults-cro_CRO.js' 'bootstrap-select-1.12.4/js/i18n/defaults-cs_CZ.js' 'bootstrap-select-1.12.4/js/i18n/defaults-da_DK.js' 'bootstrap-select-1.12.4/js/i18n/defaults-de_DE.js' 'bootstrap-select-1.12.4/js/i18n/defaults-en_US.js' 'bootstrap-select-1.12.4/js/i18n/defaults-es_CL.js' 'bootstrap-select-1.12.4/js/i18n/defaults-es_ES.js' 'bootstrap-select-1.12.4/js/i18n/defaults-et_EE.js' 'bootstrap-select-1.12.4/js/i18n/defaults-eu.js' 'bootstrap-select-1.12.4/js/i18n/defaults-fa_IR.js' 'bootstrap-select-1.12.4/js/i18n/defaults-fi_FI.js' 'bootstrap-select-1.12.4/js/i18n/defaults-fr_FR.js' 'bootstrap-select-1.12.4/js/i18n/defaults-hu_HU.js' 'bootstrap-select-1.12.4/js/i18n/defaults-id_ID.js' 'bootstrap-select-1.12.4/js/i18n/defaults-it_IT.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ja_JP.js' 'bootstrap-select-1.12.4/js/i18n/defaults-kh_KM.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ko_KR.js' 'bootstrap-select-1.12.4/js/i18n/defaults-lt_LT.js' 'bootstrap-select-1.12.4/js/i18n/defaults-nb_NO.js' 'bootstrap-select-1.12.4/js/i18n/defaults-nl_NL.js' 'bootstrap-select-1.12.4/js/i18n/defaults-pl_PL.js' 'bootstrap-select-1.12.4/js/i18n/defaults-pt_BR.js' 'bootstrap-select-1.12.4/js/i18n/defaults-pt_PT.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ro_RO.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ru_RU.js' 'bootstrap-select-1.12.4/js/i18n/defaults-sk_SK.js' 'bootstrap-select-1.12.4/js/i18n/defaults-sl_SI.js' 'bootstrap-select-1.12.4/js/i18n/defaults-sv_SE.js' 'bootstrap-select-1.12.4/js/i18n/defaults-tr_TR.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ua_UA.js' 'bootstrap-select-1.12.4/js/i18n/defaults-vi_VN.js' 'bootstrap-select-1.12.4/js/i18n/defaults-zh_CN.js' 'bootstrap-select-1.12.4/js/i18n/defaults-zh_TW.js') ]
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testForDevelopment [

	self assert: BootstrapSelectLibrary forDevelopment equals: BootstrapSelectDevelopmentLibrary
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testIsForDevelopment [

	self assert: BootstrapSelectLibrary forDevelopment isForDevelopment 
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapSelectDevelopmentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapSelectDevelopmentLibrary using: (WALocale fromString: 'es-AR')) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-es_ES.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapSelectDevelopmentLibrary using: (WALocale fromString: 'xx-XX')) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
