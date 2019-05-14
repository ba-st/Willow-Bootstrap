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
		createsAsFolders: #('bootstrap-4.3.1' 'bootstrap-4.3.1/css' 'bootstrap-4.3.1/js')
		andFileContentsMatching:
			{'bootstrap-4.3.1/css/bootstrap-grid.css' -> '5a8f63c5645e708da06ed54c831dfba95ccec698'.
			 'bootstrap-4.3.1/css/bootstrap-grid.css.map' -> 'a3014cfcaad4ca51bd3e12c4ee24cbda48af7dce'.
			 'bootstrap-4.3.1/css/bootstrap-reboot.css' -> 'af29848421c0d51f04d637def0a075d739d59eb3'.
			 'bootstrap-4.3.1/css/bootstrap-reboot.css.map' -> 'f9231d2ff985e7c1cb4d41061bc3a9510966295b'.
			 'bootstrap-4.3.1/css/bootstrap.css' -> '8ebf9e5a672b6324eead7c2bc0255a22655c6601'.
			 'bootstrap-4.3.1/css/bootstrap.css.map' -> '4f38317e7c02c54f4a672d1176706d625efa8bd5'.
			 'bootstrap-4.3.1/js/bootstrap.bundle.js' -> 'b4c8113ae1883361826974e8f3e82fe85dd67154'.
			 'bootstrap-4.3.1/js/bootstrap.bundle.js.map' -> '961f667f3bda43b00083913ac3202a9ccbe21587'.
			 'bootstrap-4.3.1/js/bootstrap.js' -> '38326e5b5f3a2f7a618a25ec0736fd17bc4f7c3d'.
			 'bootstrap-4.3.1/js/bootstrap.js.map' -> 'd04cd958eed85b70479a370206f89c083b7fa702' }
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.3.1/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-4.3.1/js/bootstrap.bundle.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.3.1/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-4.3.1/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
