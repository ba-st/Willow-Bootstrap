"
A Bootstrap3DeploymentMetadataLibraryTest is a test class for testing the behavior of Bootstrap3DeploymentMetadataLibrary
"
Class {
	#name : #Bootstrap3DeploymentMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-Libraries'
}

{ #category : #tests }
Bootstrap3DeploymentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: Bootstrap3DeploymentMetadataLibrary default
		createsAsFolders: #('bootstrap-3.4.1' 'bootstrap-3.4.1/css' 'bootstrap-3.4.1/fonts' 'bootstrap-3.4.1/js')
		andFileContentsMatching:
			{('bootstrap-3.4.1/css/bootstrap-theme.min.css' -> 'bff11cfea2b2bc5dcaffa073e68158cceb94b5bc').
			('bootstrap-3.4.1/css/bootstrap-theme.min.css.map' -> '13e3ce0a2d2da5a962050b9a0ea6c67c376b3616').
			('bootstrap-3.4.1/css/bootstrap.min.css' -> '4cdcc5689dc661b606a0fca00c21fec74481f560').
			('bootstrap-3.4.1/css/bootstrap.min.css.map' -> '63c6119052abd1f848ee51657ce892a78d019c06').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.eot' -> '86b6f62b7853e67d3e635f6512a5a5efc58ea3c3').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.svg' -> 'de51a8494180a6db074af2dee2383f0a363c5b08').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.ttf' -> '44bc1850f570972267b169ae18f1cb06b611ffa2').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.woff' -> '278e49a86e634da6f2a02f3b47dd9d2a8f26210f').
			('bootstrap-3.4.1/fonts/glyphicons-halflings-regular.woff2' -> 'ca35b697d99cae4d1b60f2d60fcd37771987eb07').
			('bootstrap-3.4.1/js/bootstrap.min.js' -> 'c958648ed73daa1323aaf9876d2fe34e6c154b7e')}
]

{ #category : #tests }
Bootstrap3DeploymentMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: Bootstrap3DeploymentMetadataLibrary isForDeployment;
		deny: Bootstrap3DeploymentMetadataLibrary isForDevelopment
]

{ #category : #tests }
Bootstrap3DeploymentMetadataLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap3DeploymentMetadataLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap.min.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap-theme.min.css"/><script type="text/javascript" src="/files/bootstrap-3.4.1/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
Bootstrap3DeploymentMetadataLibraryTest >> testUpdateRootWithoutOptionalTheme [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap3DeploymentMetadataLibrary withoutOptionalTheme updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-3.4.1/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
