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
			( 'https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css'
				expandMacrosWith: self version );
		anonymousSubResourceIntegrity: 'sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T'.
	aRoot javascript
		url: 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js';
		anonymousSubResourceIntegrity: 'sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1'.
	aRoot javascript
		url:
			( 'https://stackpath.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js'
				expandMacrosWith: self version );
		anonymousSubResourceIntegrity: 'sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM'
]

{ #category : #versions }
Bootstrap4OnlineLibrary >> version [

	^'4.3.1'
]
