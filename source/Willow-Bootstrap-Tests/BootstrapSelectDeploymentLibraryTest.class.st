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
		createsAsFolders: #('bootstrap-select-1.12.4' 'bootstrap-select-1.12.4/css' 'bootstrap-select-1.12.4/js' 'bootstrap-select-1.12.4/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.12.4/css/bootstrap-select.css.map' -> '3b094f012fa80f1e98b84da5fa79d596cd5ac4ca').
			('bootstrap-select-1.12.4/css/bootstrap-select.min.css' -> '9d84422f479e4cac49deab971a0421d8fa4ebe65').
			('bootstrap-select-1.12.4/js/bootstrap-select.js.map' -> '36cb8b5bd0c62caf3dcd3144ba685f99480a25c4').
			('bootstrap-select-1.12.4/js/bootstrap-select.min.js' -> '2968de3aeea7c8f784d41fc9ca6ace6688a56ed9').
			('bootstrap-select-1.12.4/js/i18n/defaults-ar_AR.min.js' -> '7be744e6ffadafd9b286d542ef40618cbdf94a9a').
			('bootstrap-select-1.12.4/js/i18n/defaults-bg_BG.min.js' -> 'bfd418b06a17c013826cb52de30215082d98e14f').
			('bootstrap-select-1.12.4/js/i18n/defaults-cro_CRO.min.js' -> 'b2f2a2dfc6cfd4d30b1d2d241636ab9914cb3d69').
			('bootstrap-select-1.12.4/js/i18n/defaults-cs_CZ.min.js' -> '74fde59adeec127b952f50dbd27128b8c9499da2').
			('bootstrap-select-1.12.4/js/i18n/defaults-da_DK.min.js' -> '87c0f84d1b01fcdc30a243f44ef1889fa010c1c2').
			('bootstrap-select-1.12.4/js/i18n/defaults-de_DE.min.js' -> '8645f03d5ba4bb913738f11361384ce3f5332478').
			('bootstrap-select-1.12.4/js/i18n/defaults-en_US.min.js' -> 'cafee3d1bb74a885f46780bfed3e0b4ba62c2be7').
			('bootstrap-select-1.12.4/js/i18n/defaults-es_CL.min.js' -> '23afe09421e48861a91f6848701fb2f8e7b402f6').
			('bootstrap-select-1.12.4/js/i18n/defaults-es_ES.min.js' -> '23afe09421e48861a91f6848701fb2f8e7b402f6').
			('bootstrap-select-1.12.4/js/i18n/defaults-et_EE.min.js' -> 'd460ccf7608f7c4316f61961d48ed4aa72288821').
			('bootstrap-select-1.12.4/js/i18n/defaults-eu.min.js' -> 'cf8624427a23d1ae0e811a81a7a6a2d659ecfb5d').
			('bootstrap-select-1.12.4/js/i18n/defaults-fa_IR.min.js' -> '1eaef25d9d290ecc64ffdbd12c9880cb0009edf0').
			('bootstrap-select-1.12.4/js/i18n/defaults-fi_FI.min.js' -> '62d4315d611fb7dc767ca79e987d093c3e65f3ae').
			('bootstrap-select-1.12.4/js/i18n/defaults-fr_FR.min.js' -> 'b0d3772e2efbd248ee893060eb8e663650d0cb15').
			('bootstrap-select-1.12.4/js/i18n/defaults-hu_HU.min.js' -> '9bf109725b464f30cb6fed446a9a415b44e5bd86').
			('bootstrap-select-1.12.4/js/i18n/defaults-id_ID.min.js' -> 'a4287f9b716491acd8badcfd6b4b8bbe3230d28b').
			('bootstrap-select-1.12.4/js/i18n/defaults-it_IT.min.js' -> '1b20f0d9b84ed02f4d495043a1a9907f48c21ea6').
			('bootstrap-select-1.12.4/js/i18n/defaults-ja_JP.min.js' -> 'ed46803cd7ed161e548c131dd3c51f3ad6e3c2f0').
			('bootstrap-select-1.12.4/js/i18n/defaults-kh_KM.min.js' -> '7d0eb0111fd3026f5ca42cb0b5d71acf1ed50f6f').
			('bootstrap-select-1.12.4/js/i18n/defaults-ko_KR.min.js' -> 'da7c42604c128fa88586c383283c004a19237fe7').
			('bootstrap-select-1.12.4/js/i18n/defaults-lt_LT.min.js' -> 'ff462302788287b7adfd1a2e398afbdf5cf4e7d5').
			('bootstrap-select-1.12.4/js/i18n/defaults-nb_NO.min.js' -> '0914f64e0cce2916efa703baa697aca7b7b8af0a').
			('bootstrap-select-1.12.4/js/i18n/defaults-nl_NL.min.js' -> '2121fe253aa34a88174449242ec177ceacbdf7c3').
			('bootstrap-select-1.12.4/js/i18n/defaults-pl_PL.min.js' -> '477bbc75d1d166ccd36250da807b393b9d78aa68').
			('bootstrap-select-1.12.4/js/i18n/defaults-pt_BR.min.js' -> '909c9939269ccbd7837ee9714fa4292e50842314').
			('bootstrap-select-1.12.4/js/i18n/defaults-pt_PT.min.js' -> '7aa5464ca396864afa26b26daa9e49bb29d7fdf2').
			('bootstrap-select-1.12.4/js/i18n/defaults-ro_RO.min.js' -> '49c84b2e57e7b17bae55c0f6b86a9032b85ab5dd').
			('bootstrap-select-1.12.4/js/i18n/defaults-ru_RU.min.js' -> 'ad6f0be91fa6c86f76cee59264c4477876727a5b').
			('bootstrap-select-1.12.4/js/i18n/defaults-sk_SK.min.js' -> 'a8ed90e9c28e136477712bbe08b18307e7eedd54').
			('bootstrap-select-1.12.4/js/i18n/defaults-sl_SI.min.js' -> 'c99518e8f0178ab37e51449ebe673a6174af1748').
			('bootstrap-select-1.12.4/js/i18n/defaults-sv_SE.min.js' -> '39b81d2e168b429292d666d7bebabab3be8ea8d9').
			('bootstrap-select-1.12.4/js/i18n/defaults-tr_TR.min.js' -> 'adb3e177b68bd192acee48dbbae0a95d125d6f04').
			('bootstrap-select-1.12.4/js/i18n/defaults-ua_UA.min.js' -> 'f37de0f8b30b96839c8da474d1662dd864099abf').
			('bootstrap-select-1.12.4/js/i18n/defaults-vi_VN.min.js' -> '4e4d09de91408ed3d7892c1f54606c07374db9a6').
			('bootstrap-select-1.12.4/js/i18n/defaults-zh_CN.min.js' -> 'c25170a8f53cdf8c88df7e8b5eccc6389de037ca').
			('bootstrap-select-1.12.4/js/i18n/defaults-zh_TW.min.js' -> 'e8ec9bfd1b93246b544459e1b6ae9b2e6cb2f978')}
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
