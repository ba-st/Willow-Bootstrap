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
		createsAsFolders: #('bootstrap-4.4.1' 'bootstrap-4.4.1/css' 'bootstrap-4.4.1/js')
		andFileContentsMatching:
			{'bootstrap-4.4.1/css/bootstrap-grid.min.css' -> 'eacf31cb19b8e62c9b20b01fc4498c6136163420'.
			 'bootstrap-4.4.1/css/bootstrap-grid.min.css.map' -> 'dfbaa09a175501d6cecc4338564d6b12e6e0f776'.
			 'bootstrap-4.4.1/css/bootstrap-reboot.min.css' -> 'b4e1e15083eb03574716269a531940d25c977ba3'.
			 'bootstrap-4.4.1/css/bootstrap-reboot.min.css.map' -> '27d6d4c39d7953e154ba18965221a3ab75dc1174'.
			 'bootstrap-4.4.1/css/bootstrap.min.css' -> '48390d0ce99139c112004bca8ef09c89eaf696d7'.
			 'bootstrap-4.4.1/css/bootstrap.min.css.map' -> '3e7c35f7ce1ae18c85e6a03471cb951a5e0045e7'.
			 'bootstrap-4.4.1/js/bootstrap.bundle.min.js' -> '93e9c92e828b4ea36bc0a6aa20f7a7f40f69cdef'.
			 'bootstrap-4.4.1/js/bootstrap.bundle.min.js.map' -> 'd31b75b0bf229fae51edf868a5a84571f6201af1'.
			 'bootstrap-4.4.1/js/bootstrap.min.js' -> '15ca38a670e35dab559617d02b3574c993d4e5ca'.
			 'bootstrap-4.4.1/js/bootstrap.min.js.map' -> '643cac1519b440e760222cfdb27a9f3cca59b2b6' }
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.4.1/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-4.4.1/js/bootstrap.bundle.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
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
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-4.4.1/css/bootstrap.min.css"/><script type="text/javascript" src="/files/bootstrap-4.4.1/js/bootstrap.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
