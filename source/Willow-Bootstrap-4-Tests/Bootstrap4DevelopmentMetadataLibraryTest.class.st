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
		createsAsFolders: #('bootstrap-4.4.1' 'bootstrap-4.4.1/css' 'bootstrap-4.4.1/js')
		andFileContentsMatching:
			{'bootstrap-4.4.1/css/bootstrap-grid.css' -> 'c4aac40a46ed6baf6a98d7367334be65071d014e'.
			 'bootstrap-4.4.1/css/bootstrap-grid.css.map' -> '1f32ab4e416fb9be17260c736d4eaf38c1a4d2de'.
			 'bootstrap-4.4.1/css/bootstrap-reboot.css' -> '7f7a3cbd12d3aedebe334620113fa7b6f1dc7ac3'.
			 'bootstrap-4.4.1/css/bootstrap-reboot.css.map' -> 'e9f11fff3d40879f6629d7b41a89ee756099ed24'.
			 'bootstrap-4.4.1/css/bootstrap.css' -> 'a3eced09bf5faf176ef59ec34b3021600462a01b'.
			 'bootstrap-4.4.1/css/bootstrap.css.map' -> '4d033778bd36bd5f201d1ae7fa1673e448d03df8'.
			 'bootstrap-4.4.1/js/bootstrap.bundle.js' -> '737123973b79d34bcd836981bf0ec8853520ec2d'.
			 'bootstrap-4.4.1/js/bootstrap.bundle.js.map' -> '2203721e1a2ddf714380a4718d437b1729e2599f'.
			 'bootstrap-4.4.1/js/bootstrap.js' -> '908ffb2739ea3d8c0d79c10528fc83a0ba3b970f'.
			 'bootstrap-4.4.1/js/bootstrap.js.map' -> '8c2317cffe864f23141dbf993985e7086cc12b66' }
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.4.1/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-4.4.1/js/bootstrap.bundle.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.4.1/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-4.4.1/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
