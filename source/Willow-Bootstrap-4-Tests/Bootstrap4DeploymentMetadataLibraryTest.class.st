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
		createsAsFolders: #('bootstrap-4.3.1' 'bootstrap-4.3.1/css' 'bootstrap-4.3.1/js')
		andFileContentsMatching:
			{'bootstrap-4.3.1/css/bootstrap-grid.min.css' -> '03ff849671fc9fb299bddb2480ae8220064d0584'.
			 'bootstrap-4.3.1/css/bootstrap-grid.min.css.map' -> '5da89fdaf038c6a5e81107ae7f0c59b0236ae123'.
			 'bootstrap-4.3.1/css/bootstrap-reboot.min.css' -> '8280ac4d9956622de222df6b3c0dff097700d995'.
			 'bootstrap-4.3.1/css/bootstrap-reboot.min.css.map' -> 'ba60801323a4c7bc6e03a8cdaef1f0616efea4a5'.
			 'bootstrap-4.3.1/css/bootstrap.min.css' -> '991e222c5523ba61175e7f2df84ed6da854f360f'.
			 'bootstrap-4.3.1/css/bootstrap.min.css.map' -> '138e3afc4b69b3cdda870e628d56a8dc8c6f4d36'.
			 'bootstrap-4.3.1/js/bootstrap.bundle.min.js' -> '799cea555dc5e7513382766c36e95d1d16c6ffbb'.
			 'bootstrap-4.3.1/js/bootstrap.bundle.min.js.map' -> '26594232b45dede700594918e1fd0dfa876884a6'.
			 'bootstrap-4.3.1/js/bootstrap.min.js' -> '9d4565a0802d68e3fbf0393820dd6cd5361ecc36'.
			 'bootstrap-4.3.1/js/bootstrap.min.js.map' -> 'd64a289f698e446b0cc78e83dd0161bb8e2f2075' }
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.3.1/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-4.3.1/js/bootstrap.bundle.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.3.1/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-4.3.1/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
