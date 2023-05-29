"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #Bootstrap4OnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#category : #'Willow-Bootstrap-4-Libraries'
}

{ #category : #updating }
Bootstrap4OnlineLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url:
			( 'https://cdn.jsdelivr.net/npm/bootstrap@<1s>/dist/css/bootstrap.min.css'
				expandMacrosWith: self version );
		anonymousSubResourceIntegrity: 'sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N'.
	aRoot javascript
		url:
      ( 'https://cdn.jsdelivr.net/npm/bootstrap@<1s>/dist/js/bootstrap.bundle.min.js'
        expandMacrosWith: self version );
		anonymousSubResourceIntegrity: 'sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct'
]

{ #category : #versions }
Bootstrap4OnlineLibrary >> version [

	^'4.6.2'
]
