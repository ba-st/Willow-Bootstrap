"
A BootstrapSelectDeploymentLibraryTest is a test class for testing the behavior of BootstrapSelectDeploymentLibrary
"
Class {
	#name : #BootstrapSelectDeploymentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectDeploymentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapSelectDeploymentLibrary default
		createsAsFolders: #('bootstrap-select-1.13.18' 'bootstrap-select-1.13.18/css' 'bootstrap-select-1.13.18/js' 'bootstrap-select-1.13.18/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.13.18/css/bootstrap-select.css.map' -> 'f3a22430786e51819ba1ae2a8c7ba8d8daaeb9f8').
			('bootstrap-select-1.13.18/css/bootstrap-select.min.css' -> 'bff2e47554c02ba41536a838e9c9ce2204dc2aa1').
			('bootstrap-select-1.13.18/js/bootstrap-select.min.js' -> 'cd515682bfab7d60368fcc5352fde494948e06ad').
			('bootstrap-select-1.13.18/js/bootstrap-select.min.js.map' -> 'dc08ce8d21448696b40140587e58eee34e846ad3').
			('bootstrap-select-1.13.18/js/i18n/defaults-am_ET.min.js' -> '32baa37a959b765691c75007660d317fde7c4714').
			('bootstrap-select-1.13.18/js/i18n/defaults-ar_AR.min.js' -> '04ab6d7d504fac9985d7d3c5ff227fc9511cb794').
			('bootstrap-select-1.13.18/js/i18n/defaults-bg_BG.min.js' -> 'a5d096ef61acbdcd5d863533336f8f8dfe5074c9').
			('bootstrap-select-1.13.18/js/i18n/defaults-cs_CZ.min.js' -> '92c813f54c79f2881d7e83cd98df7ea9931077e2').
			('bootstrap-select-1.13.18/js/i18n/defaults-da_DK.min.js' -> 'f8b6cd69e38b96ab61033374a26bfa2f7022805f').
			('bootstrap-select-1.13.18/js/i18n/defaults-de_DE.min.js' -> '436602c9c7b15b21fbcd135f84d7f94be0965bb2').
			('bootstrap-select-1.13.18/js/i18n/defaults-en_US.min.js' -> 'bf2991cf817ba405b76803c828004bcc751162c2').
			('bootstrap-select-1.13.18/js/i18n/defaults-es_CL.min.js' -> '453ab990fa9639ad9c3b57c5e22df1b0801e9dd4').
			('bootstrap-select-1.13.18/js/i18n/defaults-es_ES.min.js' -> '453ab990fa9639ad9c3b57c5e22df1b0801e9dd4').
			('bootstrap-select-1.13.18/js/i18n/defaults-et_EE.min.js' -> 'c6fa27e49e9e2c7a44f0b0e0088a050a332f3f6a').
			('bootstrap-select-1.13.18/js/i18n/defaults-eu.min.js' -> '4e58c2f840ebdc88b1882e2fcb1adc7ebdc4fb98').
			('bootstrap-select-1.13.18/js/i18n/defaults-fa_IR.min.js' -> '751cf25eab6469c60f8963a194e0b458d86fdaa4').
			('bootstrap-select-1.13.18/js/i18n/defaults-fi_FI.min.js' -> '5cc6debd3617879d9ccfc775928961cf228516cb').
			('bootstrap-select-1.13.18/js/i18n/defaults-fr_FR.min.js' -> '667ca9bd80d25d85991c1e0080d12372a5b2d473').
			('bootstrap-select-1.13.18/js/i18n/defaults-hr_HR.min.js' -> '7b1c3e9849d4fdf361b74bf3257da06d683d5194').
			('bootstrap-select-1.13.18/js/i18n/defaults-hu_HU.min.js' -> '537c4101daace98736acdc35c8200f63233a0129').
			('bootstrap-select-1.13.18/js/i18n/defaults-id_ID.min.js' -> '7884091302e822256087dd0e9a160b46ffb2f24a').
			('bootstrap-select-1.13.18/js/i18n/defaults-it_IT.min.js' -> 'e367b04649d7b036b965994a4b3acc449d97b66f').
			('bootstrap-select-1.13.18/js/i18n/defaults-ja_JP.min.js' -> '6bde446e4c987ab331a4d162874a57910d0113aa').
			('bootstrap-select-1.13.18/js/i18n/defaults-kh_KM.min.js' -> '52bdf01714d588597bcd6f6750956088ecaf5a43').
			('bootstrap-select-1.13.18/js/i18n/defaults-ko_KR.min.js' -> '99ef4748f9037be09fc9e54d28f21a9aa52e2561').
			('bootstrap-select-1.13.18/js/i18n/defaults-lt_LT.min.js' -> '47b919954065665557c16f4afe785037b0a975c4').
			('bootstrap-select-1.13.18/js/i18n/defaults-lv_LV.min.js' -> '59ea7e6864394aea7eae9e373aaca835e1668aca').
			('bootstrap-select-1.13.18/js/i18n/defaults-nb_NO.min.js' -> '7f940b07e1197cf519dbb96d0dcd27445aeb3b41').
			('bootstrap-select-1.13.18/js/i18n/defaults-nl_NL.min.js' -> '70440c56e289f97d087bc5f543f20cbee98aed0f').
			('bootstrap-select-1.13.18/js/i18n/defaults-pl_PL.min.js' -> '244458665cbb6b9ec327ad67d99f66309e7d2a18').
			('bootstrap-select-1.13.18/js/i18n/defaults-pt_BR.min.js' -> 'b082b404e991d9e82448d22dbf3c09997f507cff').
			('bootstrap-select-1.13.18/js/i18n/defaults-pt_PT.min.js' -> '031a82f25bfbad750069f948f31dcddba9c0737b').
			('bootstrap-select-1.13.18/js/i18n/defaults-ro_RO.min.js' -> '2abcadb8e06abff0d1ee3ff58ae2557a50c2b54b').
			('bootstrap-select-1.13.18/js/i18n/defaults-ru_RU.min.js' -> '24415c0287fcc3e71a786b4979d6fb57056af994').
			('bootstrap-select-1.13.18/js/i18n/defaults-sk_SK.min.js' -> '7bbc8c11b2e5b66cebed9bfb0ea8fcdae362b1ee').
			('bootstrap-select-1.13.18/js/i18n/defaults-sl_SI.min.js' -> '559b5ebd87121acf45dbc456c132561e621bdde4').
			('bootstrap-select-1.13.18/js/i18n/defaults-sr_SP.min.js' -> '328a6be92580dca120d677d35f0afd1da7208e07').
			('bootstrap-select-1.13.18/js/i18n/defaults-sv_SE.min.js' -> '9c9f9ea3b54171e94ba977d5f6e97a8d699a3e10').
			('bootstrap-select-1.13.18/js/i18n/defaults-th_TH.min.js' -> 'cc74f33b101aa339704f435aa40888b0ac9224df').
			('bootstrap-select-1.13.18/js/i18n/defaults-tr_TR.min.js' -> 'f4000c894f9b50dac639e5c0153c068746968fe3').
			('bootstrap-select-1.13.18/js/i18n/defaults-ua_UA.min.js' -> '36d31a00079af173699bb64b0d9b5f86d5cfb0c4').
			('bootstrap-select-1.13.18/js/i18n/defaults-vi_VN.min.js' -> 'f4987958a648dc3f370f466d1408ee449495a382').
			('bootstrap-select-1.13.18/js/i18n/defaults-zh_CN.min.js' -> '26a9d8cbdcf850be1b821467fb60d83507c2add6').
			('bootstrap-select-1.13.18/js/i18n/defaults-zh_TW.min.js' -> 'cd6d2b17f0924b9019a44e535f35002cabfbf63f')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.18/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.18/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/i18n/defaults-es_ES.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.18/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.18/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
