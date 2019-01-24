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
		createsAsFolders: #('bootstrap-3.4.0' 'bootstrap-3.4.0/css' 'bootstrap-3.4.0/fonts' 'bootstrap-3.4.0/js')
		andFileContentsMatching:
			{('bootstrap-3.4.0/css/bootstrap-theme.min.css' -> 'c78ec6842414030452bed01be25c8275d01dfca6').
			('bootstrap-3.4.0/css/bootstrap-theme.min.css.map' -> '7b6da59686964ae3dbff87da24c997e92f560415').
			('bootstrap-3.4.0/css/bootstrap.min.css' -> 'b51d0bf0bd3fd71be76bdd916f7f2c463f1e1ecf').
			('bootstrap-3.4.0/css/bootstrap.min.css.map' -> '47b894ffa73197d69d22959400934b2199df7170').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.eot' -> '86b6f62b7853e67d3e635f6512a5a5efc58ea3c3').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.svg' -> 'de51a8494180a6db074af2dee2383f0a363c5b08').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.ttf' -> '44bc1850f570972267b169ae18f1cb06b611ffa2').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.woff' -> '278e49a86e634da6f2a02f3b47dd9d2a8f26210f').
			('bootstrap-3.4.0/fonts/glyphicons-halflings-regular.woff2' -> 'ca35b697d99cae4d1b60f2d60fcd37771987eb07').
			('bootstrap-3.4.0/js/bootstrap.min.js' -> '58c59c52f2bcc6eff6e21569a76014b9bfa6913b')}
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.0/css/bootstrap.min.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.0/css/bootstrap-theme.min.css"/><script type="text/javascript" src="/files/bootstrap-3.4.0/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.0/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-3.4.0/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
