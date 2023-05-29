"
A BootstrapDatepickerDeploymentLibraryTest is a test class for testing the behavior of BootstrapDatepickerDeploymentLibrary
"
Class {
	#name : #BootstrapDatepickerDeploymentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapDatepickerDeploymentLibrary default
		createsAsFolders: #('bootstrap-datepicker-1.10.0' 'bootstrap-datepicker-1.10.0/css' 'bootstrap-datepicker-1.10.0/js' 'bootstrap-datepicker-1.10.0/locales')
		andFileContentsMatching:
			{('bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.css.map' -> '2db66492bb1251cf75a9eea45ec81b2d9fe53b81').
			('bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.min.css' -> 'a926bb55153fc330a84ad68a188a08cd5caeb9d1').
			('bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.min.js' -> '7db2e480ee3ac839987be05bb86ce9f3abc3f33c').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ar-DZ.min.js' -> 'e068ba2f4c9a2005eb6f269e1b61eeb9a33c348f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ar-tn.min.js' -> 'd6317d78825198fe84607b566f109f5f60fd0da8').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ar.min.js' -> '996766410f1628f9411142fbdf2411c0d38f59a4').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.az.min.js' -> '20167b8ada64a0c9cb3c2f006c94a1bb7437f24d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bg.min.js' -> '55ec5328c04307f08f79f393dcc50b773c1f837d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bm.min.js' -> '1846c930c4fbd8918c406726f4d076446f9d7f63').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bn.min.js' -> '444b6eb8d49f61faa21364d50dadff789a58303f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.br.min.js' -> '7e0fd5d1dc963f9db3c2c23be5b47471eccb6248').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.bs.min.js' -> 'c78ee036ae9179ade4fd61de7b91604a846d952b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ca.min.js' -> '72831f4a530d10778e226dd081712ffb47d58e07').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.cs.min.js' -> 'feaf50fa4e8f7a253e6b2df107295b4f25860458').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.cy.min.js' -> 'd8339afab441eee34b8c12ebf949d0e449e2b637').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.da.min.js' -> '725b15a7e761305a58996472287d5f6fe1dd53d1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.de.min.js' -> '9ac06ed8099c6807d5b8c348fcef19cfb8aff4d1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.el.min.js' -> '2521c8f3b36810387219090a56a4e920792e1cf1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-AU.min.js' -> '74cd81723dbca0617618968ae102a350157257e6').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-CA.min.js' -> 'c2bc09abc32af914f9ecb2a6e4c7994aa8277a01').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-GB.min.js' -> 'e1970e6d76301571471a924f36069d3bb3ae1bbe').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-IE.min.js' -> 'a1125211e582d9f0e4d044d2c6580cb33d242cbc').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-NZ.min.js' -> '6674591ee789ee2da999e0f2472aebaeac89df65').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-US.min.js' -> 'ca1e2544e3273304f3e8a8f49d9c7a0a0919493f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-ZA.min.js' -> '4b36238237551f318a22056b377990f6937c8fa1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.eo.min.js' -> 'a830345327c146c986e6ad93c199e30768556121').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.es.min.js' -> '487d0b92c90d9043ad47a473acda241450442eb0').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.et.min.js' -> 'a238f6cb85e79831495bc18fda20d4dae4f27fe8').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.eu.min.js' -> '2e95b882f9d44ea44935584c84c5d36210725c36').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fa.min.js' -> '4f7332e441f1df548ecb831dad227dde6431a0e7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fi.min.js' -> 'e92e0e06bc95f279c8bc35e7773d1a7bff4da659').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fo.min.js' -> '8c32beadaa2d93b1f86f5210a0becd3ace94cd48').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fr-CH.min.js' -> 'a960f1e3392375c5f16f7b45c059305758526852').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.fr.min.js' -> '50e022ae32d283966ac751a9a0892baa6ecafe23').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.gl.min.js' -> '937e983f8d8ed4c67930949b5ca4c65d21062f1a').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.he.min.js' -> '3bb0a5df33d9a564ce3da6aeb2558256fbcb8973').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hi.min.js' -> '1f9137e8f257b45a75d2adfb96df36b6ae13b780').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hr.min.js' -> 'a0f7a0f4a02ac5e9cd933b34d4b64358a4f4b604').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hu.min.js' -> '3c98fa09433cca6183740456d7df4d52eba02877').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.hy.min.js' -> 'e9b0f103684d9a0197b50c996fe17de4b4a717b5').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.id.min.js' -> 'f917d0204a6a4f7db837ae3e45e76ac608945d25').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.is.min.js' -> '455c6e0600381399452a01e443bbff711d96f0e4').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.it-CH.min.js' -> 'e7f4aedd5f586dc8d97388f1cf14077f8765a70a').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.it.min.js' -> '20782a399397468aa14b751ff68256e237a6e9e1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ja.min.js' -> 'cfcf25b01ca5bf476c454390f931ef636ea283a6').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ka.min.js' -> '9bb11aa66b5cd2e624e09b11e4b5dd8849fabf78').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.kh.min.js' -> 'fd6d515983f2d47fc476d15ed98ade67c1efe30d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.kk.min.js' -> 'fbf6e8d00bd69e33bfc457b6bf2ac46696552a79').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.km.min.js' -> '8498f6b2ecbc911868b6f660d83426a6abeec0f3').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ko.min.js' -> '3749ea13095b7f76f535d944ef4ad9b18de0fd97').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.kr.min.js' -> 'ac242cac6d248b77810a6e0244da89eaec3e95d9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.lt.min.js' -> '6fcbcff92de8711a3d90813736711c466ac6a891').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.lv.min.js' -> 'ef311995849b97fd850f08cb9b54cccd705cac6b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.me.min.js' -> '0852e01cd3a902068efd7a0ef0c8a5af22b0ec1d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.mk.min.js' -> '700eae2a517b075a904623543736b7848a6e2dce').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.mn.min.js' -> '3b66a6657db01078b8cad6dc8ddb9794886afad1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.mr.min.js' -> 'ee1d179b6be445d1519d77b596dc1a189c35fb20').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ms.min.js' -> 'c209b5b336a49d3abd4eaf5886341984f8c659a9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.nl-BE.min.js' -> 'c981bdf86eba5bca04253700a36243f1c38f24ad').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.nl.min.js' -> '70d61a9bf732af565d4232cbf50b747a9d82c3cf').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.no.min.js' -> '5bcb691ddc65cea80638ec54155e582ef57ff7b7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.oc.min.js' -> '6e198b0d429b9382c94b5294f808ab03883efab7').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.pl.min.js' -> '544e077897f3a3f453b19fa64c8d946b8b116d5c').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.pt-BR.min.js' -> 'b37c0ab6eeaad761074f30554b3fd8ec58a6c5cd').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.pt.min.js' -> '2df5b2414eb3e938b620ca80f918d15e0da511a0').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ro.min.js' -> '11aad945f429a28cf1c5795fb4b5e3b87318ad74').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.rs-latin.min.js' -> '09d9a72041f3c11496854464581b91c510bca3f3').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.rs.min.js' -> '800f32a6d2fda50f19299c5e4b41f768f508ecd9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ru.min.js' -> '6bfec0a5e0c1f6a06801d3639b5030b29f6c4251').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.si.min.js' -> '028f5f37aa2fe77b3f73dd3a4acb43acc4340df8').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sk.min.js' -> 'b79d466f837b305bdb7199de1180727b310af37f').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sl.min.js' -> 'f3bd33d066e26d66328f111ad7b20bce45677750').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sq.min.js' -> '9a244975598d8c238e14ebe358bb5607c352adfe').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sr-latin.min.js' -> 'eaf974cbd92c6e2ed6a17dc485e98786521c0765').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sr.min.js' -> '8e71502ed9705c2114818ee684b59e20014a69a1').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sv.min.js' -> '07bdd13730b3dbd34a58414e09658219e4d73e14').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.sw.min.js' -> '76d2aa6855884a610a66457ab7f96c79fae5b3b2').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.ta.min.js' -> '59769d112edbb20680c16d0ef64b1e3a46e96870').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.tg.min.js' -> '30dacf5ce9fac2a958c19cc56115cfd468ba0e9a').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.th.min.js' -> 'b4acafe64ff6268a087b67c883643cda9a956a29').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.tk.min.js' -> 'f39368f23f575a08d11e628c2511cd69bdc4a66d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.tr.min.js' -> 'a1468d444be990ba916b0fac3bd0f38e92f48810').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.uk.min.js' -> '5df21b7fdf136c85bb585ff4b9f0ebe9cb992fe2').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.uz-cyrl.min.js' -> '99e18f6be3e49c34c03c9645051068a36f7ee58b').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.uz-latn.min.js' -> 'ef70f4cba2b64abe9702dc60aa170fa026501e4d').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.vi.min.js' -> 'cba57797c86e4e611ea1b2787c946d5feefea18e').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.zh-CN.min.js' -> '4364fdc906d5e7c8492553b7a845d943a42ad9d9').
			('bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.zh-TW.min.js' -> 'd5bad09840e3f769d03c9da03990f07d2c54a51b')}
]

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testForDeployment [

	self assert: BootstrapDatepickerLibrary forDeployment equals: BootstrapDatepickerDeploymentLibrary
]

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testIsForDeployment [

	self
		assert: BootstrapDatepickerDeploymentLibrary isForDeployment;
		deny: BootstrapDatepickerDeploymentLibrary isForDevelopment
]

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapDatepickerDeploymentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerDeploymentLibrary using: (WALocale fromString: 'en-NZ')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.min.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/locales/bootstrap-datepicker.en-NZ.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerDeploymentLibrary using: (WALocale fromString: 'xx-XX')) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.10.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.10.0/js/bootstrap-datepicker.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
