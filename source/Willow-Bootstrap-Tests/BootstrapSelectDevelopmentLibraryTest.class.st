"
A BootstrapSelectDevelopmentLibraryTest is a test class for testing the behavior of BootstrapSelectDevelopmentLibrary
"
Class {
	#name : #BootstrapSelectDevelopmentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapSelectDevelopmentLibrary default
		createsAsFolders: #('bootstrap-select-1.13.10' 'bootstrap-select-1.13.10/css' 'bootstrap-select-1.13.10/js' 'bootstrap-select-1.13.10/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.13.10/css/bootstrap-select.css' -> '85df722a86852967c67c07dc164b38624f559fd1').
			('bootstrap-select-1.13.10/js/bootstrap-select.js' -> '1b151adb84f5426b77bfe289cbfb210aa35abca8').
			('bootstrap-select-1.13.10/js/i18n/defaults-am_ET.js' -> '627948897e8939aeceaed82cb0a57f6020aa04dd').
			('bootstrap-select-1.13.10/js/i18n/defaults-ar_AR.js' -> 'b428dac1c480b09870fc2282385fa43aab6a84c9').
			('bootstrap-select-1.13.10/js/i18n/defaults-bg_BG.js' -> '2497c587fb75e45c9d5e171c3cd4d361f61df51b').
			('bootstrap-select-1.13.10/js/i18n/defaults-cro_CRO.js' -> 'd682beb54d5ae46ed224d21ea70746f6a97a81ad').
			('bootstrap-select-1.13.10/js/i18n/defaults-cs_CZ.js' -> '2630d51643d223d555c560cc7e8e9cb0a76fbf96').
			('bootstrap-select-1.13.10/js/i18n/defaults-da_DK.js' -> '1ceb5f40cced2352eb657d4f4a68856d8c8596c8').
			('bootstrap-select-1.13.10/js/i18n/defaults-de_DE.js' -> '079aa6fc7ded5829ce219ae20845a0fab466bf3b').
			('bootstrap-select-1.13.10/js/i18n/defaults-en_US.js' -> '8948399ad2cbcebd4a9f187bb51a840be39af441').
			('bootstrap-select-1.13.10/js/i18n/defaults-es_CL.js' -> '961b749f4b7ca2faf9046fa668eb8f66e82d5e52').
			('bootstrap-select-1.13.10/js/i18n/defaults-es_ES.js' -> '9b8825a3b23299c424c627a2a4ca04c8de7fdb4f').
			('bootstrap-select-1.13.10/js/i18n/defaults-et_EE.js' -> '239454008e12801b1f11236626cbe8b2268389d2').
			('bootstrap-select-1.13.10/js/i18n/defaults-eu.js' -> 'e6e3ee61113bd44a5135c8d389ca481e20d76f23').
			('bootstrap-select-1.13.10/js/i18n/defaults-fa_IR.js' -> '1490441b19a82fa5c484a030103e5a2c13027ab1').
			('bootstrap-select-1.13.10/js/i18n/defaults-fi_FI.js' -> '8c563ca902e6c53cbd8c85a859dd0142db88d303').
			('bootstrap-select-1.13.10/js/i18n/defaults-fr_FR.js' -> '4af26470a56b1c27e27c77c4d0de979f6c4444af').
			('bootstrap-select-1.13.10/js/i18n/defaults-hr_HR.js' -> '8b9ca03bae05d3b88c7b4baf983cb4cfabd7a6f4').
			('bootstrap-select-1.13.10/js/i18n/defaults-hu_HU.js' -> '3fb02b41339492df3b3558211c507d9b0d928746').
			('bootstrap-select-1.13.10/js/i18n/defaults-id_ID.js' -> '44f9e5b0f6b0a568776d81d8cd4be8996e59bc44').
			('bootstrap-select-1.13.10/js/i18n/defaults-it_IT.js' -> '173a7b26069f3e088f6f733f1598edb6d7e89048').
			('bootstrap-select-1.13.10/js/i18n/defaults-ja_JP.js' -> 'ecda6172249aba0102d01e3153ae8000f6962639').
			('bootstrap-select-1.13.10/js/i18n/defaults-kh_KM.js' -> '710baf09ce353e6d90d0ca807a91fefb8097623a').
			('bootstrap-select-1.13.10/js/i18n/defaults-ko_KR.js' -> '7fd8c5a39236ed2496de0f5385af92907da0d647').
			('bootstrap-select-1.13.10/js/i18n/defaults-lt_LT.js' -> 'bc31fc76926e8ede0da7051d8de9408d9050350b').
			('bootstrap-select-1.13.10/js/i18n/defaults-lv_LV.js' -> '2571e9f147c6a498da27b6e6e73a0a30e7fe1185').
			('bootstrap-select-1.13.10/js/i18n/defaults-nb_NO.js' -> '4d0549076ddb488d4e947eaf09e72313c38955d9').
			('bootstrap-select-1.13.10/js/i18n/defaults-nl_NL.js' -> 'bc301da22a608b022f83b5fc4bbe28b120aff70d').
			('bootstrap-select-1.13.10/js/i18n/defaults-pl_PL.js' -> 'eefe7934adff144ded437b8e52d36f7d26464572').
			('bootstrap-select-1.13.10/js/i18n/defaults-pt_BR.js' -> '8c568655f747e1b40ae0988a8c4fe4b94bd0981e').
			('bootstrap-select-1.13.10/js/i18n/defaults-pt_PT.js' -> '77643e9e9cd4aca2e3b126d5985255537e37990e').
			('bootstrap-select-1.13.10/js/i18n/defaults-ro_RO.js' -> 'cb7773fd2ea6ba0ffc20184228e000a3060dbf05').
			('bootstrap-select-1.13.10/js/i18n/defaults-ru_RU.js' -> '6bbeb811b99f68d398b5231299781d9bfb78b5cb').
			('bootstrap-select-1.13.10/js/i18n/defaults-sk_SK.js' -> '0e1c6621a0529195d60d2556caa08f9eb5200b53').
			('bootstrap-select-1.13.10/js/i18n/defaults-sl_SI.js' -> 'daebdb83c333f4c8878117df5da3c2e1dacc92c9').
			('bootstrap-select-1.13.10/js/i18n/defaults-sv_SE.js' -> '0c34aa3ea4f2326ef58238c0d0d537646479cf00').
			('bootstrap-select-1.13.10/js/i18n/defaults-tr_TR.js' -> 'bd123f36a84bd049fc40a334010e15ee06ea31bb').
			('bootstrap-select-1.13.10/js/i18n/defaults-ua_UA.js' -> 'aca4729b826ee1a64bd342aab2f6a3ce08d8a6dd').
			('bootstrap-select-1.13.10/js/i18n/defaults-vi_VN.js' -> '9dce99958871bd16622903333467c02ae700ee6e').
			('bootstrap-select-1.13.10/js/i18n/defaults-zh_CN.js' -> '74d6fd2a20140a6d240e87e1e885c35345ba0a22').
			('bootstrap-select-1.13.10/js/i18n/defaults-zh_TW.js' -> 'b941163e8a66b5bb5e4fa059c175b2efbcebd878')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.10/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock:
				[ :root | ( BootstrapSelectDevelopmentLibrary using: ( WALocale fromString: 'es-AR' ) ) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.10/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/i18n/defaults-es_ES.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock:
				[ :root | ( BootstrapSelectDevelopmentLibrary using: ( WALocale fromString: 'xx-XX' ) ) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.10/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.10/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
