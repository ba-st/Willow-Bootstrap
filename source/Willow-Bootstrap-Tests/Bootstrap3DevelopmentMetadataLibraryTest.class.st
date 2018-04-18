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
		useFileTestingPlatformDuring: [ Bootstrap3DevelopmentMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('bootstrap-3.3.7' 'bootstrap-3.3.7/css' 'bootstrap-3.3.7/fonts' 'bootstrap-3.3.7/js');
				assert: GRPlatform current createdFiles
					equals:
					#('bootstrap-3.3.7/css/bootstrap-theme.css' 'bootstrap-3.3.7/css/bootstrap-theme.css.map' 'bootstrap-3.3.7/css/bootstrap.css' 'bootstrap-3.3.7/css/bootstrap.css.map' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.eot' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.svg' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.ttf' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff2' 'bootstrap-3.3.7/js/bootstrap.js') ]
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
