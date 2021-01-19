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
		createsAsFolders: #('bootstrap-select-1.13.16' 'bootstrap-select-1.13.16/css' 'bootstrap-select-1.13.16/js' 'bootstrap-select-1.13.16/js/i18n')
		andFileContentsMatching:
			{('bootstrap-select-1.13.16/css/bootstrap-select.css.map' -> 'f3a22430786e51819ba1ae2a8c7ba8d8daaeb9f8').
			('bootstrap-select-1.13.16/css/bootstrap-select.min.css' -> '67971489ea960a0687049e98810824250742bdc7').
			('bootstrap-select-1.13.16/js/bootstrap-select.min.js' -> 'e30deb4214e1491ba1b090a9c3c07b41987b0ea3').
			('bootstrap-select-1.13.16/js/bootstrap-select.min.js.map' -> 'b605852f3ca403557e1ac308c6039351cd51860e').
			('bootstrap-select-1.13.16/js/i18n/defaults-am_ET.min.js' -> 'f9b77c042afe0815d8e1216a784fd290a773902d').
			('bootstrap-select-1.13.16/js/i18n/defaults-ar_AR.min.js' -> '79e2deb3b8d8d2bc88ea8393bbab96181a2d3386').
			('bootstrap-select-1.13.16/js/i18n/defaults-bg_BG.min.js' -> 'fa3ba8c2a69aa02c6358d162664a39ad15800ce7').
			('bootstrap-select-1.13.16/js/i18n/defaults-cro_CRO.min.js' -> 'b2f2a2dfc6cfd4d30b1d2d241636ab9914cb3d69').
			('bootstrap-select-1.13.16/js/i18n/defaults-cs_CZ.min.js' -> '044f489f9c7511ea1560468073aa7dc4ced39787').
			('bootstrap-select-1.13.16/js/i18n/defaults-da_DK.min.js' -> 'c85cdb1a40e8eed5b2b2caf3e6e4ce0a3f54ab23').
			('bootstrap-select-1.13.16/js/i18n/defaults-de_DE.min.js' -> '11269c01a7ae38971e119568c8e1cb8185bca98e').
			('bootstrap-select-1.13.16/js/i18n/defaults-en_US.min.js' -> '3ab6e55e345b7761cd9cb517fb3478a71bab1261').
			('bootstrap-select-1.13.16/js/i18n/defaults-es_CL.min.js' -> 'ba47634e064c79aaa8d54ef015fcab459a6b1193').
			('bootstrap-select-1.13.16/js/i18n/defaults-es_ES.min.js' -> 'ba47634e064c79aaa8d54ef015fcab459a6b1193').
			('bootstrap-select-1.13.16/js/i18n/defaults-et_EE.min.js' -> 'b3d7eb664539a56311a6876057c9c5b63913ce29').
			('bootstrap-select-1.13.16/js/i18n/defaults-eu.min.js' -> 'ec9f41c942202d5c00570b52fdcb7e73e0fbd66b').
			('bootstrap-select-1.13.16/js/i18n/defaults-fa_IR.min.js' -> '53bd9becd94cc58871e7f81202a543520f8de31c').
			('bootstrap-select-1.13.16/js/i18n/defaults-fi_FI.min.js' -> '5822cf1eb706c6705ac6a4fbbcfd8ba3e5d8ad67').
			('bootstrap-select-1.13.16/js/i18n/defaults-fr_FR.min.js' -> '3c6d8c7aaf7ca55d3c0ef7f0338d7151f7aa3a50').
			('bootstrap-select-1.13.16/js/i18n/defaults-hr_HR.min.js' -> '807847ecd13c014d8924f0357f7c4a0359458ce6').
			('bootstrap-select-1.13.16/js/i18n/defaults-hu_HU.min.js' -> '0c9f225067082d014464fc68f88aba33c3a91e4a').
			('bootstrap-select-1.13.16/js/i18n/defaults-id_ID.min.js' -> '2f58611fe7d3e72a33e5c1e5ae34d10f11089f27').
			('bootstrap-select-1.13.16/js/i18n/defaults-it_IT.min.js' -> '846f3e12fd466554aff2782441d76d59f5b71af5').
			('bootstrap-select-1.13.16/js/i18n/defaults-ja_JP.min.js' -> '30ec2ad986dd3a86f8a77383dec62b17680a2453').
			('bootstrap-select-1.13.16/js/i18n/defaults-kh_KM.min.js' -> 'dd9857ad96eb8b7f3736f33effe90def376efbdb').
			('bootstrap-select-1.13.16/js/i18n/defaults-ko_KR.min.js' -> '739cd4757f488cf5edf88391caba050cf61bf368').
			('bootstrap-select-1.13.16/js/i18n/defaults-lt_LT.min.js' -> '058e5d065dbf603dd0a3b2460bb5cc602e306812').
			('bootstrap-select-1.13.16/js/i18n/defaults-lv_LV.min.js' -> '4980bac6ced13fa8504f92351303aacdf2d680bd').
			('bootstrap-select-1.13.16/js/i18n/defaults-nb_NO.min.js' -> 'c330b1bedc1242c22de50219ed22c08942b0ab73').
			('bootstrap-select-1.13.16/js/i18n/defaults-nl_NL.min.js' -> '6f25b80db9455430afa4f3c563aa78bb383caa2c').
			('bootstrap-select-1.13.16/js/i18n/defaults-pl_PL.min.js' -> '35abf7832eabf2b5cc87e39714ce7abbb7eb9814').
			('bootstrap-select-1.13.16/js/i18n/defaults-pt_BR.min.js' -> '4dd8d16891ed33f0393967639a97ef9648f289f8').
			('bootstrap-select-1.13.16/js/i18n/defaults-pt_PT.min.js' -> 'f94d724c86150e42611790a3fb83d25eeecd2ca1').
			('bootstrap-select-1.13.16/js/i18n/defaults-ro_RO.min.js' -> '37d6208f0de9e961d4740ad325f6938b6133d986').
			('bootstrap-select-1.13.16/js/i18n/defaults-ru_RU.min.js' -> 'e4aec9aa6515f13fc62154d82ea7c9299e2b125f').
			('bootstrap-select-1.13.16/js/i18n/defaults-sk_SK.min.js' -> '69406015d99014edee16bea6523e17ec8ec14461').
			('bootstrap-select-1.13.16/js/i18n/defaults-sl_SI.min.js' -> '2ea490bf2c9c039af814b0ddc95b642a7164ef71').
			('bootstrap-select-1.13.16/js/i18n/defaults-sr_SP.min.js' -> '281e7c180246c179ca5d7c4b293932b9467ea2a5').
			('bootstrap-select-1.13.16/js/i18n/defaults-sv_SE.min.js' -> 'e13f6db10f855deaa72608fe7c787053194453fe').
			('bootstrap-select-1.13.16/js/i18n/defaults-th_TH.min.js' -> '93459a11250a46feafb808438b95b929e2a60e6d').
			('bootstrap-select-1.13.16/js/i18n/defaults-tr_TR.min.js' -> 'fdfbc945833aee3924385ceff3c64acfb3acc043').
			('bootstrap-select-1.13.16/js/i18n/defaults-ua_UA.min.js' -> 'd7628adc85db80eda7afbc076b3b9ce006dbca01').
			('bootstrap-select-1.13.16/js/i18n/defaults-vi_VN.min.js' -> '73fe252935b7b560c78d128b4cab2ca8014dd7fa').
			('bootstrap-select-1.13.16/js/i18n/defaults-zh_CN.min.js' -> 'b0668a6a9686bac76d5a1329fe226b2c05e25d06').
			('bootstrap-select-1.13.16/js/i18n/defaults-zh_TW.min.js' -> '47e4a2edd621540550f505f74d50bf9272c7e54e')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.16/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.16/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/i18n/defaults-es_ES.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.13.16/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.13.16/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
