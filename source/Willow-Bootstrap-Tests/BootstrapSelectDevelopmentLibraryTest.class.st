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
		assertFileDeploymentOf: BootstrapSelectDevelopmentLibrary default
		createsAsFolders: #('bootstrap-select-1.12.4' 'bootstrap-select-1.12.4/css' 'bootstrap-select-1.12.4/js' 'bootstrap-select-1.12.4/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.12.4/css/bootstrap-select.css' -> '3702c3c94c8f6705858b793dabe47a732155a4f1').
			('bootstrap-select-1.12.4/js/bootstrap-select.js' -> '8e4cf25395e988ce963bde70c0d769aa375614e3').
			('bootstrap-select-1.12.4/js/i18n/defaults-ar_AR.js' -> '4556b3d1c9d6601ec7331d31e60fc2740af1eee5').
			('bootstrap-select-1.12.4/js/i18n/defaults-bg_BG.js' -> '7e5c049180c17d35be237d5b74b2d76a9892aec7').
			('bootstrap-select-1.12.4/js/i18n/defaults-cro_CRO.js' -> 'd682beb54d5ae46ed224d21ea70746f6a97a81ad').
			('bootstrap-select-1.12.4/js/i18n/defaults-cs_CZ.js' -> 'a972fdda00e8d8b9f64b7a268e570ad5ba8e023f').
			('bootstrap-select-1.12.4/js/i18n/defaults-da_DK.js' -> 'bc8ebc280b8eb566f9e1f10af5314bfd033a8556').
			('bootstrap-select-1.12.4/js/i18n/defaults-de_DE.js' -> '8699b3cc0e9bed9dd5a1621eaff8d19293bf5c9c').
			('bootstrap-select-1.12.4/js/i18n/defaults-en_US.js' -> '02ea297e43f1e3eb5c94110076502b1087421d7a').
			('bootstrap-select-1.12.4/js/i18n/defaults-es_CL.js' -> 'f065a39e2e78529d9c88e36d59d189f4ef1f688e').
			('bootstrap-select-1.12.4/js/i18n/defaults-es_ES.js' -> 'f065a39e2e78529d9c88e36d59d189f4ef1f688e').
			('bootstrap-select-1.12.4/js/i18n/defaults-et_EE.js' -> 'c25d5ed862a5e7894d5908676e21d494d5f30fa9').
			('bootstrap-select-1.12.4/js/i18n/defaults-eu.js' -> 'ff0974f25361d8b984f4374f6d0160868fce7c62').
			('bootstrap-select-1.12.4/js/i18n/defaults-fa_IR.js' -> 'eeeba90fab04908a82b89cbef41880918a14e38b').
			('bootstrap-select-1.12.4/js/i18n/defaults-fi_FI.js' -> '3527d3d94483d5bd20245568cc8384764cddc73b').
			('bootstrap-select-1.12.4/js/i18n/defaults-fr_FR.js' -> '28f9c1f14142f4b70ac1b96f3cb20ebb4064a471').
			('bootstrap-select-1.12.4/js/i18n/defaults-hu_HU.js' -> 'd464c886e164f0b5a2aaaed65e42f09368ccea45').
			('bootstrap-select-1.12.4/js/i18n/defaults-id_ID.js' -> 'f143c25c5543dbfe078f30d9d8d28b3629fec3a8').
			('bootstrap-select-1.12.4/js/i18n/defaults-it_IT.js' -> 'bb95df8118815a7c804080f4580c17d89efd2991').
			('bootstrap-select-1.12.4/js/i18n/defaults-ja_JP.js' -> '79605f6107612194808b825ae9cc73f2b615e44e').
			('bootstrap-select-1.12.4/js/i18n/defaults-kh_KM.js' -> '799a446a3e5436d3afae1e4391b394c25b74018a').
			('bootstrap-select-1.12.4/js/i18n/defaults-ko_KR.js' -> 'f4a5e6fce9781fac2b3a62ba362ce6bdd18eb1fb').
			('bootstrap-select-1.12.4/js/i18n/defaults-lt_LT.js' -> '80121f8d5432bd203b22c7fc05c58260d719007b').
			('bootstrap-select-1.12.4/js/i18n/defaults-nb_NO.js' -> 'c5b74bb7f1c792af64ef9569cad7128ade6e8aa9').
			('bootstrap-select-1.12.4/js/i18n/defaults-nl_NL.js' -> '8427f2f5cbe404d990923eed8477388eb3778440').
			('bootstrap-select-1.12.4/js/i18n/defaults-pl_PL.js' -> '2c10a68a9d4759f32e22e8ffc1fba211acf64b02').
			('bootstrap-select-1.12.4/js/i18n/defaults-pt_BR.js' -> 'f83aaf3470599280521bc2b7e7dbca508d2de36b').
			('bootstrap-select-1.12.4/js/i18n/defaults-pt_PT.js' -> '12898f1da1c0f1fbd99c9268b4a0b54e5406ee1b').
			('bootstrap-select-1.12.4/js/i18n/defaults-ro_RO.js' -> '34762a1ed7af0844f3799cecc119cc3a68fa2b1a').
			('bootstrap-select-1.12.4/js/i18n/defaults-ru_RU.js' -> 'c08ee5b2d60fb29ab60aee7cfc8da9e2a75cb53f').
			('bootstrap-select-1.12.4/js/i18n/defaults-sk_SK.js' -> '612a380cd5c6c106f7266d6903f9f19c930b212a').
			('bootstrap-select-1.12.4/js/i18n/defaults-sl_SI.js' -> '790036204c946e4d07bb81f091437c08b3e95c0a').
			('bootstrap-select-1.12.4/js/i18n/defaults-sv_SE.js' -> 'ebb97b5f93023fce45b1870cd12fcbcbe41cb994').
			('bootstrap-select-1.12.4/js/i18n/defaults-tr_TR.js' -> '0f4a8cfa9d405df4e8ea8fc248755225de89ab51').
			('bootstrap-select-1.12.4/js/i18n/defaults-ua_UA.js' -> '2d6400b2b6198f8c1899261cff1dad22bf73c649').
			('bootstrap-select-1.12.4/js/i18n/defaults-vi_VN.js' -> '4740ac8be3a271e6f6a4184fa30b947242a9d377').
			('bootstrap-select-1.12.4/js/i18n/defaults-zh_CN.js' -> '555699b723cf783a0c1f0d2da24cb670365a1246').
			('bootstrap-select-1.12.4/js/i18n/defaults-zh_TW.js' -> '65664fff5124c94dca0155fafb9a04f4badb64ac')}
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
