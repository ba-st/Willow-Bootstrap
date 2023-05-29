"
A Bootstrap4DeploymentMetadataLibraryTest is a test class for testing the behavior of Bootstrap4DeploymentMetadataLibrary
"
Class {
	#name : #Bootstrap4DeploymentMetadataLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-4-Tests-Libraries'
}

{ #category : #tests }
Bootstrap4DeploymentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: Bootstrap4DeploymentMetadataLibrary default
		createsAsFolders: #('bootstrap-4.6.2')
		andFileContentsMatching:
			{'bootstrap-4.6.2/bootstrap.bundle.min.js' -> '0b885c125fa47fe20da624e049c6e81678292d68'.
			 'bootstrap-4.6.2/bootstrap.bundle.min.js.map' -> 'ce24715e4ebe5f8c1335c5ebacff174e81b512fb'.
			 'bootstrap-4.6.2/bootstrap.min.css' -> '08ef5f8f7f94b93b3ed817569ef212eebe97e49e'.
			 'bootstrap-4.6.2/bootstrap.min.css.map' -> 'ef6cc55ed3ebcfddf25d99401e1b6f766dd8f1ed'.
			 'bootstrap-4.6.2/bootstrap.min.js' -> 'a9b48dac757528de63ff9b1720d74c4a7237f4a9'.
			 'bootstrap-4.6.2/bootstrap.min.js.map' -> 'a1914fe0f2a15bcbe3061499ab8a43ed45d93981' }
]

{ #category : #tests }
Bootstrap4DeploymentMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: Bootstrap4DeploymentMetadataLibrary isForDeployment;
		deny: Bootstrap4DeploymentMetadataLibrary isForDevelopment
]

{ #category : #tests }
Bootstrap4DeploymentMetadataLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap4DeploymentMetadataLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.6.2/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-4.6.2/bootstrap.bundle.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
Bootstrap4DeploymentMetadataLibraryTest >> testUpdateRootWithoutBundledDependencies [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap4DeploymentMetadataLibrary withoutBundledDependencies updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.6.2/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-4.6.2/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
