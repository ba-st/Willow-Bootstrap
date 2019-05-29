"
A BootstrapSelectDeploymentLibraryTest is a test class for testing the behavior of BootstrapSelectDeploymentLibrary
"
Class {
	#name : #BootstrapSelectDeploymentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapSelectDeploymentLibrary default
		createsAsFolders: #('bootstrap-select-1.13.10' 'bootstrap-select-1.13.10/css' 'bootstrap-select-1.13.10/js' 'bootstrap-select-1.13.10/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.13.10/css/bootstrap-select.css.map' -> '3b094f012fa80f1e98b84da5fa79d596cd5ac4ca').
			('bootstrap-select-1.13.10/css/bootstrap-select.min.css' -> 'e0d445c6e7d078c010c424f3619b18bf9d29c2a0').
			('bootstrap-select-1.13.10/js/bootstrap-select.js.map' -> '36cb8b5bd0c62caf3dcd3144ba685f99480a25c4').
			('bootstrap-select-1.13.10/js/bootstrap-select.min.js' -> 'a3db9083f77dd22e7365c2d7471f658483bfab22').
			('bootstrap-select-1.13.10/js/i18n/defaults-am_ET.min.js' -> '763858e02094be94cd2b0dcc545e0fdd002d117f').
			('bootstrap-select-1.13.10/js/i18n/defaults-ar_AR.min.js' -> '5acf324b921dbfabab671ca8970bbd9bf32fd786').
			('bootstrap-select-1.13.10/js/i18n/defaults-bg_BG.min.js' -> '4e483b3253d5859dc9721c1b48baacc866c1d120').
			('bootstrap-select-1.13.10/js/i18n/defaults-cro_CRO.min.js' -> 'b2f2a2dfc6cfd4d30b1d2d241636ab9914cb3d69').
			('bootstrap-select-1.13.10/js/i18n/defaults-cs_CZ.min.js' -> 'b62c31577448cbaea7f2b1a9c9e00b4690239007').
			('bootstrap-select-1.13.10/js/i18n/defaults-da_DK.min.js' -> '11749bcac15f5c3ef128e7d44d6eaa9017c5d351').
			('bootstrap-select-1.13.10/js/i18n/defaults-de_DE.min.js' -> 'f260f2f23ddcd2970fff4ceafe99597ec91a58ed').
			('bootstrap-select-1.13.10/js/i18n/defaults-en_US.min.js' -> '6b6c2c295c94bc4ce0e0bf9c6c0afae49ffc3ada').
			('bootstrap-select-1.13.10/js/i18n/defaults-es_CL.min.js' -> '9b0e79f7398f190c8b2647b3a596d4c81db1c95b').
			('bootstrap-select-1.13.10/js/i18n/defaults-es_ES.min.js' -> '9b0e79f7398f190c8b2647b3a596d4c81db1c95b').
			('bootstrap-select-1.13.10/js/i18n/defaults-et_EE.min.js' -> 'b26567360079d2d9fc12de8f5155d5abbef864ef').
			('bootstrap-select-1.13.10/js/i18n/defaults-eu.min.js' -> 'b1e1ac207f0958590888b4813af01835a3be60cb').
			('bootstrap-select-1.13.10/js/i18n/defaults-fa_IR.min.js' -> 'c6da7a8e75e8e52ba66ae115bbdf5263509078ec').
			('bootstrap-select-1.13.10/js/i18n/defaults-fi_FI.min.js' -> '00c970200363873e2cc7cfd88ac2a94df608f80c').
			('bootstrap-select-1.13.10/js/i18n/defaults-fr_FR.min.js' -> '92cd0a547918c36160e3ec5dde917faa0c2c5e43').
			('bootstrap-select-1.13.10/js/i18n/defaults-hr_HR.min.js' -> 'baa4b2665c4535e8b77d11617b1b5f2a3ddca774').
			('bootstrap-select-1.13.10/js/i18n/defaults-hu_HU.min.js' -> '6428bd515097b325fd1971477206291976dfe1e9').
			('bootstrap-select-1.13.10/js/i18n/defaults-id_ID.min.js' -> '2c3192c0a72949749ecdc41033548ac65e08d93e').
			('bootstrap-select-1.13.10/js/i18n/defaults-it_IT.min.js' -> 'a03e09d41f6c21456a199b31ef1692bb51b73445').
			('bootstrap-select-1.13.10/js/i18n/defaults-ja_JP.min.js' -> '7651a55b9821b6149bcf52e54257ce3f7c167ce5').
			('bootstrap-select-1.13.10/js/i18n/defaults-kh_KM.min.js' -> '74522425ef05a1a69e89d87cd55cc256152ea3f8').
			('bootstrap-select-1.13.10/js/i18n/defaults-ko_KR.min.js' -> '4c5d1e5826da256d3de981b02930d699bf9be80f').
			('bootstrap-select-1.13.10/js/i18n/defaults-lt_LT.min.js' -> '7127ce455a7aa5a3978d24b695d5099ec7380539').
			('bootstrap-select-1.13.10/js/i18n/defaults-lv_LV.min.js' -> '6ba60b5f661350ea2871dc5a9cebcba9129ad0a5').
			('bootstrap-select-1.13.10/js/i18n/defaults-nb_NO.min.js' -> '6176473eacc0173d55936e864c40f438f1d0a023').
			('bootstrap-select-1.13.10/js/i18n/defaults-nl_NL.min.js' -> '37acf2b2e8ddbd35337c8ab8f06d718d6ea948f8').
			('bootstrap-select-1.13.10/js/i18n/defaults-pl_PL.min.js' -> 'e7502d695cc01b8d868034bbb53c77f865bd8c29').
			('bootstrap-select-1.13.10/js/i18n/defaults-pt_BR.min.js' -> 'eaad898964f1defa95ad5fe47a1fe12545cd81d2').
			('bootstrap-select-1.13.10/js/i18n/defaults-pt_PT.min.js' -> '0e6118cdc5b9daff5e9acaf13f81c860023a2834').
			('bootstrap-select-1.13.10/js/i18n/defaults-ro_RO.min.js' -> '0680d9732625d5eb03bec916876c1a0e1a1dffea').
			('bootstrap-select-1.13.10/js/i18n/defaults-ru_RU.min.js' -> '835558f4cb17fe39b70766e5e6dad830d9f44f79').
			('bootstrap-select-1.13.10/js/i18n/defaults-sk_SK.min.js' -> '4f4acbc022ffd84d3904d74170f17ab2b170f204').
			('bootstrap-select-1.13.10/js/i18n/defaults-sl_SI.min.js' -> 'b32507c8fe2d4478d9a1486054956390b47e8f66').
			('bootstrap-select-1.13.10/js/i18n/defaults-sv_SE.min.js' -> '8da892a87d34709f3e7ddd27d2e6906b82267626').
			('bootstrap-select-1.13.10/js/i18n/defaults-tr_TR.min.js' -> 'fe04358ac4952177bc3fbd6a985afa73cdf69e2c').
			('bootstrap-select-1.13.10/js/i18n/defaults-ua_UA.min.js' -> '2efd958f5e81860eef0083f230c8c93b8318b6a4').
			('bootstrap-select-1.13.10/js/i18n/defaults-vi_VN.min.js' -> '58d2721e6c023a21bae272c803ceedca94a2c255').
			('bootstrap-select-1.13.10/js/i18n/defaults-zh_CN.min.js' -> '4bddf1fb487e86061d63f395a52a145e496345f4').
			('bootstrap-select-1.13.10/js/i18n/defaults-zh_TW.min.js' -> '5f393b856a0972c63704310e87c8e5d949b88f4a')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.10/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock:
				[ :root | ( BootstrapSelectDeploymentLibrary using: ( WALocale fromString: 'es-AR' ) ) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.10/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/i18n/defaults-es_ES.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock:
				[ :root | ( BootstrapSelectDeploymentLibrary using: ( WALocale fromString: 'xx-XX' ) ) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.10/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
