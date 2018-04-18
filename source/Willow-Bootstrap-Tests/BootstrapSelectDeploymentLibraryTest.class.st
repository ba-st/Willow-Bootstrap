"
A BootstrapSelectDeploymentLibraryTest is a test class for testing the behavior of BootstrapSelectDeploymentLibrary
"
Class {
	#name : #BootstrapSelectDeploymentLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ BootstrapSelectDeploymentLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('bootstrap-select-1.12.4' 'bootstrap-select-1.12.4/css' 'bootstrap-select-1.12.4/js' 'bootstrap-select-1.12.4/js/i18n');
				assert: GRPlatform current createdFiles
					equals:
					 #('bootstrap-select-1.12.4/css/bootstrap-select.css.map' 'bootstrap-select-1.12.4/css/bootstrap-select.min.css' 'bootstrap-select-1.12.4/js/bootstrap-select.js.map' 'bootstrap-select-1.12.4/js/bootstrap-select.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ar_AR.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-bg_BG.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-cro_CRO.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-cs_CZ.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-da_DK.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-de_DE.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-en_US.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-es_CL.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-es_ES.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-et_EE.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-eu.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-fa_IR.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-fi_FI.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-fr_FR.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-hu_HU.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-id_ID.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-it_IT.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ja_JP.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-kh_KM.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ko_KR.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-lt_LT.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-nb_NO.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-nl_NL.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-pl_PL.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-pt_BR.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-pt_PT.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ro_RO.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ru_RU.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-sk_SK.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-sl_SI.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-sv_SE.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-tr_TR.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-ua_UA.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-vi_VN.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-zh_CN.min.js' 'bootstrap-select-1.12.4/js/i18n/defaults-zh_TW.min.js') ]
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testForDeployment [

	self assert: BootstrapSelectLibrary forDeployment equals: BootstrapSelectDeploymentLibrary
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testIsForDeployment [

	self assert: BootstrapSelectLibrary forDeployment isForDeployment 
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapSelectDeploymentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapSelectDeploymentLibrary using: (WALocale fromString: 'es-AR')) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-es_ES.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapSelectDeploymentLibrary using: (WALocale fromString: 'xx-XX')) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
