"
A BootstrapSelectDevelopmentLibraryTest is a test class for testing the behavior of BootstrapSelectDevelopmentLibrary
"
Class {
	#name : #BootstrapSelectDevelopmentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectDevelopmentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapSelectDevelopmentLibrary default
		createsAsFolders: #('bootstrap-select-1.13.16' 'bootstrap-select-1.13.16/css' 'bootstrap-select-1.13.16/js' 'bootstrap-select-1.13.16/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.13.16/css/bootstrap-select.css' -> '20c2e25d2c7f1f1fbe568bfb988419287d6bafc7').
			('bootstrap-select-1.13.16/js/bootstrap-select.js' -> '4cbfc22d2c304fb91d3507c36f77fe35b5d5b79e').
			('bootstrap-select-1.13.16/js/i18n/defaults-am_ET.js' -> 'a2945c141350edbf25a7e70bfc7ba59692182c59').
			('bootstrap-select-1.13.16/js/i18n/defaults-ar_AR.js' -> 'ed6c3ee37cdd2f12b007644aaa6b157d132630ed').
			('bootstrap-select-1.13.16/js/i18n/defaults-bg_BG.js' -> '531fc705f326b81232314936a50e6c93d1eb9f57').
			('bootstrap-select-1.13.16/js/i18n/defaults-cro_CRO.js' -> 'd682beb54d5ae46ed224d21ea70746f6a97a81ad').
			('bootstrap-select-1.13.16/js/i18n/defaults-cs_CZ.js' -> 'e3290033cb4bc0c82922915b125ecfd1cbbb9ec8').
			('bootstrap-select-1.13.16/js/i18n/defaults-da_DK.js' -> '28658743a8998217f7ef5b7b088ca319b8f32f12').
			('bootstrap-select-1.13.16/js/i18n/defaults-de_DE.js' -> '421510ccd4cd418132953a0671f0b263547d7904').
			('bootstrap-select-1.13.16/js/i18n/defaults-en_US.js' -> 'f39d193003387cc1be17aee2c5286726c30301e2').
			('bootstrap-select-1.13.16/js/i18n/defaults-es_CL.js' -> '8835bee2d6d81f7f56ab331364f064199f4ec474').
			('bootstrap-select-1.13.16/js/i18n/defaults-es_ES.js' -> 'a18f2d12173f4816cad92f17b4be4e38050064f7').
			('bootstrap-select-1.13.16/js/i18n/defaults-et_EE.js' -> 'a97c5f7ca558c257a643321d1728c320082bfc97').
			('bootstrap-select-1.13.16/js/i18n/defaults-eu.js' -> 'c2dc21c3644d528b63006934e8a84eec8f948a3b').
			('bootstrap-select-1.13.16/js/i18n/defaults-fa_IR.js' -> 'd761009be31a63027920584edf841fc232c3a907').
			('bootstrap-select-1.13.16/js/i18n/defaults-fi_FI.js' -> 'b56f12263ec4de129914181aefb0bb4b8223c174').
			('bootstrap-select-1.13.16/js/i18n/defaults-fr_FR.js' -> 'cb808065e064dbb577b37ec6883c9104358c7669').
			('bootstrap-select-1.13.16/js/i18n/defaults-hr_HR.js' -> '21c0eadb92d26d6dfc08061671cac544d81cb252').
			('bootstrap-select-1.13.16/js/i18n/defaults-hu_HU.js' -> 'efe22fa43373005a912b989f073b21e957c7920d').
			('bootstrap-select-1.13.16/js/i18n/defaults-id_ID.js' -> '7646bc832a984f59fa3ab1c61d308f1b840bfad3').
			('bootstrap-select-1.13.16/js/i18n/defaults-it_IT.js' -> 'ff46f21301c24958fbb1a68aa8bb096e9c285765').
			('bootstrap-select-1.13.16/js/i18n/defaults-ja_JP.js' -> '47635a2996aa2bbb19ab72f92be5478f9c9f2afc').
			('bootstrap-select-1.13.16/js/i18n/defaults-kh_KM.js' -> '77283e18370e4def762327f72515618608a96273').
			('bootstrap-select-1.13.16/js/i18n/defaults-ko_KR.js' -> 'adc257f727821cdad21f7d18f1758980e82f8599').
			('bootstrap-select-1.13.16/js/i18n/defaults-lt_LT.js' -> '3ee9a850e3cb39a40492047bf0d64323c92cada8').
			('bootstrap-select-1.13.16/js/i18n/defaults-lv_LV.js' -> '6ee84ba2a8c52cfd62e309981847a50ff31841d1').
			('bootstrap-select-1.13.16/js/i18n/defaults-nb_NO.js' -> 'a8879270e1412d4c7928739e213d9c77f1bd94c4').
			('bootstrap-select-1.13.16/js/i18n/defaults-nl_NL.js' -> '21659b6372d4afe7dd035e1b70fb96579a474133').
			('bootstrap-select-1.13.16/js/i18n/defaults-pl_PL.js' -> '4accff55fc6f346acbff469e045e073053d3d9d8').
			('bootstrap-select-1.13.16/js/i18n/defaults-pt_BR.js' -> '575c1415653ae677b00248ba4bbf56c8c27bcca7').
			('bootstrap-select-1.13.16/js/i18n/defaults-pt_PT.js' -> '64d47ad2726d421924874bad8d9d29100ce5ccd9').
			('bootstrap-select-1.13.16/js/i18n/defaults-ro_RO.js' -> '112469d93e022fdc9adeb6b3e605274e41028d44').
			('bootstrap-select-1.13.16/js/i18n/defaults-ru_RU.js' -> 'dd293cfa29abd10e0dcb819374a15e7839be9297').
			('bootstrap-select-1.13.16/js/i18n/defaults-sk_SK.js' -> 'ccf3ea60bc133e7c13a0ff25a92b5dfcc41ea2da').
			('bootstrap-select-1.13.16/js/i18n/defaults-sl_SI.js' -> '3938dfd9bc383180f71d17b15bb8a749225e841b').
			('bootstrap-select-1.13.16/js/i18n/defaults-sr_SP.js' -> '593e6ccab3f7045f5c02436d02a3a57621316b8d').
			('bootstrap-select-1.13.16/js/i18n/defaults-sv_SE.js' -> '45736acf7e6cb01d7f7c46fdbe1ca1c682ce5a20').
			('bootstrap-select-1.13.16/js/i18n/defaults-th_TH.js' -> '561016b9469545a2f0e72b776b9a932d1b5eb8f3').
			('bootstrap-select-1.13.16/js/i18n/defaults-tr_TR.js' -> '295f44de7911169c9916b32f0bd3ccf953d32b5d').
			('bootstrap-select-1.13.16/js/i18n/defaults-ua_UA.js' -> 'c10d4b46dede1c47156b2f838a3db47a1537400f').
			('bootstrap-select-1.13.16/js/i18n/defaults-vi_VN.js' -> '3614abdf6143dd5d439b449fbbeba00c41c4adc3').
			('bootstrap-select-1.13.16/js/i18n/defaults-zh_CN.js' -> '4b0f3e8c4f5767fceaaf03b2c5921ccd55a9699b').
			('bootstrap-select-1.13.16/js/i18n/defaults-zh_TW.js' -> 'c74bb8a7cac025c87b2d483ca145cff124c48486')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.16/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.16/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/i18n/defaults-es_ES.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.16/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
