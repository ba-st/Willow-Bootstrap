"
A Bootstrap3DeploymentMetadataLibraryTest is a test class for testing the behavior of Bootstrap3DeploymentMetadataLibrary
"
Class {
	#name : #Bootstrap3DeploymentMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Libraries'
}

{ #category : #tests }
Bootstrap3DeploymentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: Bootstrap3DeploymentMetadataLibrary default
		createsAsFolders: #('bootstrap-3.3.7' 'bootstrap-3.3.7/css' 'bootstrap-3.3.7/fonts' 'bootstrap-3.3.7/js')
		andFileContentsMatching:
			{('bootstrap-3.3.7/css/bootstrap-theme.min.css' -> '86a08c1f4626f5a814b56b20dd9a4dd03b89c103').
			('bootstrap-3.3.7/css/bootstrap-theme.min.css.map' -> '87f7dfd79d77051ac2eca7d093d961fbd1c8f6eb').
			('bootstrap-3.3.7/css/bootstrap.min.css' -> '7a8e3eef5055bfe92e58b53306609765e127e6a2').
			('bootstrap-3.3.7/css/bootstrap.min.css.map' -> 'e0d7b2bde55a0bac1b658a507e8ca491a6729e06').
			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.eot' -> '86b6f62b7853e67d3e635f6512a5a5efc58ea3c3').
			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.svg' -> 'de51a8494180a6db074af2dee2383f0a363c5b08').
			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.ttf' -> '44bc1850f570972267b169ae18f1cb06b611ffa2').
			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff' -> '278e49a86e634da6f2a02f3b47dd9d2a8f26210f').
			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff2' -> 'ca35b697d99cae4d1b60f2d60fcd37771987eb07').
			('bootstrap-3.3.7/js/bootstrap.min.js' -> '789f825a2b8a49a846a2870670acd883f198f058')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.min.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap-theme.min.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
