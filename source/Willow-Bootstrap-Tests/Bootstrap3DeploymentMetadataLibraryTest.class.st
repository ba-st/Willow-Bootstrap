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
		useFileTestingPlatformDuring: [ Bootstrap3DeploymentMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders
					equals: #('bootstrap-3.3.7' 'bootstrap-3.3.7/css' 'bootstrap-3.3.7/fonts' 'bootstrap-3.3.7/js');
				assert: GRPlatform current createdFiles
					equals:
					#('bootstrap-3.3.7/css/bootstrap-theme.min.css' 'bootstrap-3.3.7/css/bootstrap-theme.min.css.map' 'bootstrap-3.3.7/css/bootstrap.min.css' 'bootstrap-3.3.7/css/bootstrap.min.css.map' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.eot' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.svg' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.ttf' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff2' 'bootstrap-3.3.7/js/bootstrap.min.js') ]
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
