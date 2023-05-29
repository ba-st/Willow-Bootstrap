"
A Bootstrap4DevelopmentMetadataLibraryTest is a test class for testing the behavior of Bootstrap4DevelopmentMetadataLibrary
"
Class {
	#name : #Bootstrap4DevelopmentMetadataLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-4-Tests-Libraries'
}

{ #category : #tests }
Bootstrap4DevelopmentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: Bootstrap4DevelopmentMetadataLibrary default
		createsAsFolders: #('bootstrap-4.6.2')
		andFileContentsMatching:
			{'bootstrap-4.6.2/bootstrap.bundle.js' -> 'fa2b4384498b0e54a5b449428740cec8d17ee89e'.
			 'bootstrap-4.6.2/bootstrap.css' -> '5ae4104a6ca019b2ff4f485065013128a0a07e92'.
			 'bootstrap-4.6.2/bootstrap.js' -> 'db9db16897424a8014c626f52970aa5b3c45fae7'}
]

{ #category : #tests }
Bootstrap4DevelopmentMetadataLibraryTest >> testHandlesFolder [

	self
		assert:
			( Bootstrap4DevelopmentMetadataLibrary
				handlesFolder: Bootstrap4DevelopmentMetadataLibrary folderName );
		deny: ( Bootstrap4DevelopmentMetadataLibrary handlesFolder: #files )
]

{ #category : #tests }
Bootstrap4DevelopmentMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: Bootstrap4DevelopmentMetadataLibrary isForDevelopment;
		deny: Bootstrap4DevelopmentMetadataLibrary isForDeployment
]

{ #category : #tests }
Bootstrap4DevelopmentMetadataLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap4DevelopmentMetadataLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.6.2/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-4.6.2/bootstrap.bundle.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #tests }
Bootstrap4DevelopmentMetadataLibraryTest >> testUpdateRootWithoutBundledDependencies [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap4DevelopmentMetadataLibrary withoutBundledDependencies updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.6.2/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-4.6.2/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
