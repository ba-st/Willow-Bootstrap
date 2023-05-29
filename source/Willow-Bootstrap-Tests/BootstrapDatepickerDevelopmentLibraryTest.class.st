"
A BootstrapDatepickerDevelopmentLibraryTest is a test class for testing the behavior of BootstrapDatepickerDevelopmentLibrary
"
Class {
	#name : #BootstrapDatepickerDevelopmentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerDevelopmentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapDatepickerDevelopmentLibrary default
		createsAsFolders: #('bootstrap-datepicker-1.10.0' 'bootstrap-datepicker-1.10.0/css' 'bootstrap-datepicker-1.10.0/js' 'bootstrap-datepicker-1.10.0/locales')
		andFileContentsMatching:
			{('bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.css' -> '3880bb2f7eb77e752ae5dcb2ffd53dbbdcfe1b5a').
			('bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.js' -> '3aaf22846de4ef800bf56367c579207797a8ea12').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ar-DZ.js' -> '28dbe18b5ad26f2ec6d47826d9fc307d5a69f1a6').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ar-tn.js' -> '37fe8c5f35ef235ababc35595669aeb42ed44d20').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ar.js' -> '2a26fd427f439e76c3f976bfb38df41e0c3da7ef').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.az.js' -> '345f62f22809ba3fb07d629be60101303601252d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bg.js' -> '7d4dce82d54a4baf77d6da6cf638e025103878b6').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bm.js' -> 'd1fdde78c76dc07b519a1c527b360d14939bb658').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bn.js' -> 'd203403d7334fa8cc9258fa171a49fa5eb565bac').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.br.js' -> '64fc00dbc80c90a74b3c217fb1696e6b166d33b7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bs.js' -> '88028302140aeb75e191b1b1a280ab00f40a361b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ca.js' -> 'abc0ec98b43b73975ff2bc085a9c14e1ff46eafd').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.cs.js' -> '5b587a18aff42d051de6bb38c4cc5fb3857aa0d3').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.cy.js' -> '19ea302f435a061d5879cfb43fc02524f25e932f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.da.js' -> '8ee60fda07da3494083b2370e6f6769dff49439d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.de.js' -> '9685e7601b5448c0f05cdb4f28d2fb52d5af8c31').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.el.js' -> '79042f2b79270fcac7a4d76da4af534b276fcef6').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-AU.js' -> '20ebf141ddf7e66c8b47727d800751b07755d78f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-CA.js' -> 'd15f28b01a857ecbb1e73d990996ae697e1f961c').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-GB.js' -> '174bf22571ab307910a96111eaf6cd17acf0c0ad').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-IE.js' -> '9a534f770eb170dbd43c6e53b79e1cd86c26e4b7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-NZ.js' -> '70891ce6cdf4c58ff0e19dedadbfdc93a2ba3c8e').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-US.js' -> '80041a844ba149cdc439aaf9a1d3793cd686589a').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-ZA.js' -> '62a98808444f4ef40a90bb3fe4fc7a94c5699fc1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.eo.js' -> '980364611b8a7fae3fdebae9455d99f8dc854538').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.es.js' -> 'ca9c2e5214f181fef59b98dab899ddf1f0697924').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.et.js' -> '7460c8075dfa038565c4dcd9d5c5ba01fca550e5').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.eu.js' -> '0f868575a8279de11150fa6ff61a436aeb11479f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fa.js' -> '3556d66f4a1b992c8cfa8c46f7e7f4c642e09f50').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fi.js' -> '2b42220d5458753166d0d0ec14e86b225a1e5c4f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fo.js' -> 'fe4f4c54852af312d6b76fa0be04ec081261de54').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fr-CH.js' -> '96806f8242d3d2450b59f6819bd89e73c421bb05').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fr.js' -> '1d0bb969e53f38bfeb157a15cdf97d9f0f8bef59').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.gl.js' -> 'a37308e7336000268daa3d2f434d3bf3f5c3d6a7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.he.js' -> 'b5aa72e5e3586897728c1b284a38c44013bcb939').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hi.js' -> 'b43c9fc18a136a7db4da49c7f20ecb842ca1ff1e').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hr.js' -> 'a1c9cea3d9538331252eae95dfdfe698d1b5ca76').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hu.js' -> '8bf119b4e32649604abdc6cff05f0c2d17805a83').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hy.js' -> '5cada8b64676d36632dcc3af0beb84c42f2dbdf9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.id.js' -> 'ae205f4b0051cc6250ce1113fdb2bc61c26183f7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.is.js' -> '51004a84aa6833ed1e4eb2decddd2a5fc10414f3').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.it-CH.js' -> '0a10ee0449748146688ac394af8e984ba3a57baa').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.it.js' -> '3fbf335de5a7ad2444b8bc2ad217cb07c096676b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ja.js' -> '759e80026375a94cb72881176e3042d691c614f0').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ka.js' -> 'd401fda1e1da8081214a8bef6b5c09e7e4c01c70').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.kh.js' -> '74061a17051cf49b97c0ab831eb8e2465bf20070').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.kk.js' -> '7ea93ed033d28b11e5ce6610c373bc2d0ce2aa21').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.km.js' -> '5d1dfca7c85dba236b4ddefc6bec81edce460503').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ko.js' -> 'd899be10e6f42892b7ea4df0f07cd2176952f204').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.kr.js' -> '324e75fe12e29915d9c709436deb7008015fdbd1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.lt.js' -> '715eeae5774032d322f341d6b7f285310b8280ac').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.lv.js' -> '98d7243b80b537381665628f2e34eda93604c679').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.me.js' -> '96a5b38dee105bb7754d7a35bc3733fc21654f2c').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.mk.js' -> 'cf6f063f3888742ce0a564826dd508522f8ec8c2').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.mn.js' -> 'c555962869f23ac25a0199928f2cb5549f72942d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.mr.js' -> 'e5bc3992afd3e0e3cc8ba8af1c41adb292dc6e48').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ms.js' -> '51fa311509563d68b89243e4e84a86b83d40e22b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.nl-BE.js' -> '79c9b7f24525adffad99a91c9a88bb7310fe7012').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.nl.js' -> 'ce08598e2b93be3a64d55c0dc9a1a570e32d0bd2').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.no.js' -> '63599a8941f3bb2cdfc287338f7211290f02a8e8').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.oc.js' -> '917db61099eb8d4cd301a5ec6f20bb2597fadc9d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.pl.js' -> '5e515dec11549b5aef436ce2dbe57d3ea047f6f4').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.pt-BR.js' -> '90bf661ddf276bf5cb98cfdf6cd31e45ab0d51d7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.pt.js' -> 'c7381dcd50ec6246984ee6a922400b1a980c5fc8').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ro.js' -> 'fc017ed50f2382ef2cfc70370a2f66a58ad1e6ee').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.rs-latin.js' -> 'f034bca51128ae67a8494e696b262083b1e80c22').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.rs.js' -> 'aae64cd8dc75fecefebb4fa2ccb5f953e51e0918').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ru.js' -> '3b6c3a382b71e4f29d00f20fdb2444a0c5e097d7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.si.js' -> 'c61f8203d26763b6ca18270d99da6adcdbf9add9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sk.js' -> '777780d1f537445ec419577fdf3ed03bc20941c9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sl.js' -> '5801119e9e3991203f25591413b92a5db9275912').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sq.js' -> '71d41df8dba08498727cf4c179903a6d033bc72f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sr-latin.js' -> '5087785ff7a296d5bb8d5f71d894da562ed4d1a0').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sr.js' -> 'b6eeaf3d9fe34d0f845cb76c89486d22fb70668a').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sv.js' -> '5802c2dc78f4787c2dd649d5107aa925ea20573d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sw.js' -> 'c2e0f119e58f306031f9ecdfebd4222a535dee77').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ta.js' -> 'c5644e555ac92d6d302a83e4b3ddb703ac10fca0').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.tg.js' -> 'ed2293143873c9630ccf36d0f49121cc5a27a2e3').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.th.js' -> '6b2d20cfd1e6f264a8c69862807568d6a31ad897').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.tk.js' -> '2d3267478d3d8fff8d081bd1887fbde52f139adf').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.tr.js' -> '242556539c495815b070a650a254ae24c45f5dd4').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.uk.js' -> 'ec000885d439f9fa4334d760099463c8b0405e3d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.uz-cyrl.js' -> '9d0f90b55b3012cfe60ee56b4ad6304c454ab1e6').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.uz-latn.js' -> '55988802d8b3bc5b58da7405dc625a073c966d0b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.vi.js' -> 'ff725d09754c5789fb9b4bba036f350b25be752c').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.zh-CN.js' -> '2d6df5645384d72d962a719cb94a9609b38256bb').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.zh-TW.js' -> '9fae51bab1940f08fd0141a53bc791d6ff8ca7af')}
]

{ #category : #tests }
BootstrapDatepickerDevelopmentLibraryTest >> testForDevelopment [

	self assert: BootstrapDatepickerLibrary forDevelopment equals: BootstrapDatepickerDevelopmentLibrary
]

{ #category : #tests }
BootstrapDatepickerDevelopmentLibraryTest >> testIsForDevelopment [

	self
		assert: BootstrapDatepickerDevelopmentLibrary isForDevelopment;
		deny: BootstrapDatepickerDevelopmentLibrary isForDeployment
]

{ #category : #tests }
BootstrapDatepickerDevelopmentLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapDatepickerDevelopmentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapDatepickerDevelopmentLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerDevelopmentLibrary using: (WALocale fromString: 'en-NZ')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-NZ.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapDatepickerDevelopmentLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerDevelopmentLibrary using: (WALocale fromString: 'xx-XX')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
