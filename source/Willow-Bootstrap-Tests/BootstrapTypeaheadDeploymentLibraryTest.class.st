"
A BootstrapTypeaheadDeploymentLibraryTest is a test class for testing the behavior of BootstrapTypeaheadDeploymentLibrary
"
Class {
	#name : #BootstrapTypeaheadDeploymentLibraryTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Typeahead'
}

{ #category : #tests }
BootstrapTypeaheadDeploymentLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: BootstrapTypeaheadDeploymentLibrary default
		createsAsFolders: #('bootstrap-typeahead-4.0.2')
		andFileContentsMatching: {('bootstrap-typeahead-4.0.2/bootstrap3-typeahead.min.js' -> '8174cc20521054baee069553cbbca7a662d6d025')}
]

{ #category : #tests }
BootstrapTypeaheadDeploymentLibraryTest >> testForDeployment [

	self assert: BootstrapTypeaheadLibrary forDeployment equals: BootstrapTypeaheadDeploymentLibrary
]

{ #category : #tests }
BootstrapTypeaheadDeploymentLibraryTest >> testIsForDeployment [

	self assert: BootstrapTypeaheadLibrary forDeployment isForDeployment
]

{ #category : #tests }
BootstrapTypeaheadDeploymentLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapTypeaheadDeploymentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
