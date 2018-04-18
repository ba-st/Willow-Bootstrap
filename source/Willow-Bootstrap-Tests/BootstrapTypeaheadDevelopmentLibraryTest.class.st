"
PA BootstrapTypeaheadDevelopmentLibraryTest is a test class for testing the behavior of BootstrapTypeaheadDevelopmentLibrary
"
Class {
	#name : #BootstrapTypeaheadDevelopmentLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Typeahead'
}

{ #category : #tests }
BootstrapTypeaheadDevelopmentLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ BootstrapTypeaheadDevelopmentLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('bootstrap-typeahead-4.0.2');
				assert: GRPlatform current createdFiles equals: #('bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js') ]
]

{ #category : #tests }
BootstrapTypeaheadDevelopmentLibraryTest >> testForDevelopment [

	self assert: BootstrapTypeaheadLibrary forDevelopment equals: BootstrapTypeaheadDevelopmentLibrary
]

{ #category : #tests }
BootstrapTypeaheadDevelopmentLibraryTest >> testIsForDevelopment [

	self assert: BootstrapTypeaheadLibrary forDevelopment isForDevelopment
]

{ #category : #tests }
BootstrapTypeaheadDevelopmentLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapTypeaheadDevelopmentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
