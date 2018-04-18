"
A BootstrapDatepickerDeploymentLibraryTest is a test class for testing the behavior of BootstrapDatepickerDeploymentLibrary
"
Class {
	#name : #BootstrapDatepickerDeploymentLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerDeploymentLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ BootstrapDatepickerDeploymentLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders
					equals: #('bootstrap-datepicker-1.7.0' 'bootstrap-datepicker-1.7.0/css' 'bootstrap-datepicker-1.7.0/js' 'bootstrap-datepicker-1.7.0/locales');
				assert: GRPlatform current createdFiles
					equals:
					#('bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.css.map' 'bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.min.css' 'bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ar-tn.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ar.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.az.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.bg.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.bn.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.br.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.bs.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ca.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.cs.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.cy.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.da.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.de.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.el.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-AU.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-CA.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-GB.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-IE.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-NZ.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-ZA.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.eo.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.es.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.et.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.eu.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.fa.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.fi.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.fo.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.fr-CH.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.fr.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.gl.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.he.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.hi.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.hr.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.hu.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.hy.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.id.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.is.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.it-CH.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.it.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ja.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ka.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.kh.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.kk.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.km.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ko.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.kr.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.lt.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.lv.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.me.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.mk.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.mn.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ms.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.nb.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.nl-BE.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.nl.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.no.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.oc.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.pl.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.pt-BR.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.pt.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ro.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.rs-latin.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.rs.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ru.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.si.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sk.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sl.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sq.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sr-latin.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sr.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sv.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.sw.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.ta.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.tg.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.th.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.tr.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.uk.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.uz-cyrl.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.uz-latn.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.vi.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.zh-CN.min.js' 'bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.zh-TW.min.js') ]
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.min.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-NZ.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
