"
A Bootstrap3DevelopmentMetadataLibraryTest is a test class for testing the behavior of Bootstrap3DevelopmentMetadataLibrary
"
Class {
	#name : #Bootstrap3DevelopmentMetadataLibraryTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Libraries'
}

{ #category : #tests }
Bootstrap3DevelopmentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: Bootstrap3DevelopmentMetadataLibrary default
		createsAsFolders: #('bootstrap-3.4.1' 'bootstrap-3.4.1/css' 'bootstrap-3.4.1/fonts' 'bootstrap-3.4.1/js')
		andFileContentsMatching:
			{('bootstrap-3.4.1/css/bootstrap-theme.css' -> 'e1edd5ab9dd143566085933d6101eea095e22f94').
			('bootstrap-3.4.1/css/bootstrap-theme.css.map' -> 'c7480814f50a27a02502df89cd9c679cf3341405').
			('bootstrap-3.4.1/css/bootstrap.css' -> '97adbe85e07d5d147e3131fad7a88b8bb83b0d66').
			('bootstrap-3.4.1/css/bootstrap.css.map' -> 'b08e098d10fa20a8f0ecdf24f3716ecd68826e34').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.eot' -> '86b6f62b7853e67d3e635f6512a5a5efc58ea3c3').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.svg' -> 'de51a8494180a6db074af2dee2383f0a363c5b08').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.ttf' -> '44bc1850f570972267b169ae18f1cb06b611ffa2').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.woff' -> '278e49a86e634da6f2a02f3b47dd9d2a8f26210f').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.woff2' -> 'ca35b697d99cae4d1b60f2d60fcd37771987eb07').
			('bootstrap-3.4.1/js/bootstrap.js' -> '6b58c6d4f074119651b9fb8198ff87c7388fb4ca')}
]

{ #category : #tests }
Bootstrap3DevelopmentMetadataLibraryTest >> testHandlesFolder [

	self
		assert: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: Bootstrap3DevelopmentMetadataLibrary folderName);
		deny: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: #files)
]

{ #category : #tests }
Bootstrap3DevelopmentMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: Bootstrap3DevelopmentMetadataLibrary isForDevelopment;
		deny: Bootstrap3DevelopmentMetadataLibrary isForDeployment
]

{ #category : #tests }
Bootstrap3DevelopmentMetadataLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap3DevelopmentMetadataLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.4.1/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
Bootstrap3DevelopmentMetadataLibraryTest >> testUpdateRootWithoutOptionalTheme [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap3DevelopmentMetadataLibrary withoutOptionalTheme updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-3.4.1/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
