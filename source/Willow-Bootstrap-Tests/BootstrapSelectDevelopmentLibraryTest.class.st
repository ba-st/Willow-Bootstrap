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
		createsAsFolders: #('bootstrap-select-1.13.18' 'bootstrap-select-1.13.18/css' 'bootstrap-select-1.13.18/js' 'bootstrap-select-1.13.18/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.13.18/css/bootstrap-select.css' -> '6f9a878945f82210bd84ce4aed056888d612fbb4').
			('bootstrap-select-1.13.18/js/bootstrap-select.js' -> '76208bb4562217cbe9b0e986d58e756cd1caf70c').
			('bootstrap-select-1.13.18/js/i18n/defaults-am_ET.js' -> 'f058836e5a845927c082ffc4d03c6b8998a828da').
			('bootstrap-select-1.13.18/js/i18n/defaults-ar_AR.js' -> 'a46f72270c1d050e098f57f163d0744067577431').
			('bootstrap-select-1.13.18/js/i18n/defaults-bg_BG.js' -> '8027348c1605807a3bef6446ecdc7cfec17bd8cf').
			('bootstrap-select-1.13.18/js/i18n/defaults-cs_CZ.js' -> '9a227c9015458c6bdc32667be646905a8d259da1').
			('bootstrap-select-1.13.18/js/i18n/defaults-da_DK.js' -> 'ce0eeb261a3a0a2eee8ceb030aa60b85189f95e5').
			('bootstrap-select-1.13.18/js/i18n/defaults-de_DE.js' -> 'e34abd9efe9fe9ffafdf4182a01780fef20c74c6').
			('bootstrap-select-1.13.18/js/i18n/defaults-en_US.js' -> '38bdf180dff0bd05db6b6c194144bd6ec0834215').
			('bootstrap-select-1.13.18/js/i18n/defaults-es_CL.js' -> '7595261ba54c9e67311cb487a3069e2953eb1199').
			('bootstrap-select-1.13.18/js/i18n/defaults-es_ES.js' -> '852e2688b5413575cade5f694bb6eb725b4d3bdc').
			('bootstrap-select-1.13.18/js/i18n/defaults-et_EE.js' -> 'e2b4f2dbfde0de858aa2936a7bb7319f95c3a6a9').
			('bootstrap-select-1.13.18/js/i18n/defaults-eu.js' -> '58e35054875b0d6ebb4b0c78ed5824562f570a8a').
			('bootstrap-select-1.13.18/js/i18n/defaults-fa_IR.js' -> 'f35f70b2e882543cd6322791d96f52dd84e200ac').
			('bootstrap-select-1.13.18/js/i18n/defaults-fi_FI.js' -> '2f91f5ef5133364fab4d61b3d25e83abc5f58163').
			('bootstrap-select-1.13.18/js/i18n/defaults-fr_FR.js' -> 'fb28ea98c106c20fdabe8015f45735aeb6d44e19').
			('bootstrap-select-1.13.18/js/i18n/defaults-hr_HR.js' -> 'a4c8b4cb145ecaa3d8f694b9ec5e0392ab25a148').
			('bootstrap-select-1.13.18/js/i18n/defaults-hu_HU.js' -> 'ddd4fdb56e25dfb90f09dfbd7709666cc87644ab').
			('bootstrap-select-1.13.18/js/i18n/defaults-id_ID.js' -> '76ca0932e8f888c6eea036a41ce4ef997c69149f').
			('bootstrap-select-1.13.18/js/i18n/defaults-it_IT.js' -> '5d3c9909f4bb94ff77b45c091f775f7d6abb857d').
			('bootstrap-select-1.13.18/js/i18n/defaults-ja_JP.js' -> '4d507a9f7e05bf986f20514059955b27d98fc2de').
			('bootstrap-select-1.13.18/js/i18n/defaults-kh_KM.js' -> '8fd47abb2c873ae496df7138b14988f67d442913').
			('bootstrap-select-1.13.18/js/i18n/defaults-ko_KR.js' -> '6fcabd1176d661de43f595af4cc49b95b2e968c6').
			('bootstrap-select-1.13.18/js/i18n/defaults-lt_LT.js' -> '207fbca3e2646713e6dba12b4a99416c7177d323').
			('bootstrap-select-1.13.18/js/i18n/defaults-lv_LV.js' -> '84b7c7208bd3808ab87ef1de42d3cc457faa6110').
			('bootstrap-select-1.13.18/js/i18n/defaults-nb_NO.js' -> '8536a19f67505729d11a6181901a082f86394dd4').
			('bootstrap-select-1.13.18/js/i18n/defaults-nl_NL.js' -> '36d8801e34df1842d5b5e24e68332fa812f3d122').
			('bootstrap-select-1.13.18/js/i18n/defaults-pl_PL.js' -> '78543ea55e535b5a297661249fb92e48c2cbedca').
			('bootstrap-select-1.13.18/js/i18n/defaults-pt_BR.js' -> '19b23e9b7f56f77e4791fed8b2b92d72ca1f03bb').
			('bootstrap-select-1.13.18/js/i18n/defaults-pt_PT.js' -> '76cb2aeca48b7ef28e19b0f7d3001a3b8e35459d').
			('bootstrap-select-1.13.18/js/i18n/defaults-ro_RO.js' -> '38620011e4f2f2374e6261eb134183faa2e76c67').
			('bootstrap-select-1.13.18/js/i18n/defaults-ru_RU.js' -> '97146efd0a6fad4caa763eee9638f7ea0a32349b').
			('bootstrap-select-1.13.18/js/i18n/defaults-sk_SK.js' -> '1ad9c3a796d9cf423915e12fe670c97dbd3b76bc').
			('bootstrap-select-1.13.18/js/i18n/defaults-sl_SI.js' -> 'fe073270c6b3dd09c9dbf99ce48e48d6e9a9e47f').
			('bootstrap-select-1.13.18/js/i18n/defaults-sr_SP.js' -> 'd16dac3b4f7837b65e81b8d073f628d473913728').
			('bootstrap-select-1.13.18/js/i18n/defaults-sv_SE.js' -> '2ed2f5de45caba5f15ccf569df664857f8c524d8').
			('bootstrap-select-1.13.18/js/i18n/defaults-th_TH.js' -> 'b5f341747a22f2be5197074ac0762021aaa8ceae').
			('bootstrap-select-1.13.18/js/i18n/defaults-tr_TR.js' -> '9894e85a0e1546914f16d916e7991987d0497388').
			('bootstrap-select-1.13.18/js/i18n/defaults-ua_UA.js' -> 'c182a5fa4e7839c4c97944b57af5c5e79cfd0d31').
			('bootstrap-select-1.13.18/js/i18n/defaults-vi_VN.js' -> '5885a6e36c59d12c688ccc917857b1354b26389b').
			('bootstrap-select-1.13.18/js/i18n/defaults-zh_CN.js' -> 'adad249f5267e5a227d5da2f1931a650ab184a9a').
			('bootstrap-select-1.13.18/js/i18n/defaults-zh_TW.js' -> 'cf0c27955d2192218b819cf698f9557fed54350e')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.18/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.18/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/i18n/defaults-es_ES.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.18/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/i18n/defaults-en_US.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
