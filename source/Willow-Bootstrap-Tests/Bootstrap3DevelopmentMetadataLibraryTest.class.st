"
A Bootstrap3DevelopmentMetadataLibraryTest is a test class for testing the behavior of Bootstrap3DevelopmentMetadataLibrary
"
Class {
	#name : #Bootstrap3DevelopmentMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Libraries'
}

{ #category : #tests }
Bootstrap3DevelopmentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: Bootstrap3DevelopmentMetadataLibrary default
		createsAsFolders: #('bootstrap-3.4.0' 'bootstrap-3.4.0/css' 'bootstrap-3.4.0/fonts' 'bootstrap-3.4.0/js')
		andFileContentsMatching:
			{('bootstrap-3.4.0/css/bootstrap-theme.css' -> '98f12eae6541f4f2405fc1928e4e9c56c08c1d70').
			('bootstrap-3.4.0/css/bootstrap-theme.css.map' -> '47ddf09ecdeb7ef9c105e0a626c5b159e1bb64e1').
			('bootstrap-3.4.0/css/bootstrap.css' -> '612436c5985c58074c11645e856ba4cfd9552dbe').
			('bootstrap-3.4.0/css/bootstrap.css.map' -> '9fa2bda3c1c5737db82073c722aadb4cd91f4e6b').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.eot' -> '86b6f62b7853e67d3e635f6512a5a5efc58ea3c3').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.svg' -> 'de51a8494180a6db074af2dee2383f0a363c5b08').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.ttf' -> '44bc1850f570972267b169ae18f1cb06b611ffa2').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.woff' -> '278e49a86e634da6f2a02f3b47dd9d2a8f26210f').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.woff2' -> 'ca35b697d99cae4d1b60f2d60fcd37771987eb07').
			('bootstrap-3.4.0/js/bootstrap.js' -> 'e61f1ff9165b85e99405fe5b4ae8fc1a8ade2c63')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.0/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.0/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.4.0/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.0/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-3.4.0/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
