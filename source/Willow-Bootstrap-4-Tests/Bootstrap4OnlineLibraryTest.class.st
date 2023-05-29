"
A Bootstrap4OnlineLibraryTest is a test class for testing the behavior of Bootstrap4OnlineLibrary
"
Class {
	#name : #Bootstrap4OnlineLibraryTest,
	#superclass : #TestCase,
	#category : #'Willow-Bootstrap-4-Tests-Libraries'
}

{ #category : #test }
Bootstrap4OnlineLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		        fullDocument: true;
		        rootBlock: [ :root | Bootstrap4OnlineLibrary default updateRoot: root ];
		        render: [ :canvas |  ].

	self
		assert: html
		equals:
		'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/><script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #test }
Bootstrap4OnlineLibraryTest >> testVersion [

	self assert: Bootstrap4OnlineLibrary default version equals: '4.6.2'
]
