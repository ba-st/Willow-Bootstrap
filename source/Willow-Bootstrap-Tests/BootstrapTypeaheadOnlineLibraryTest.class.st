"
A BootstrapTypeaheadOnlineLibraryTest is a test class for testing the behavior of BootstrapTypeaheadOnlineLibrary
"
Class {
	#name : #BootstrapTypeaheadOnlineLibraryTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Typeahead'
}

{ #category : #'tests-Updating' }
BootstrapTypeaheadOnlineLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapTypeaheadOnlineLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
