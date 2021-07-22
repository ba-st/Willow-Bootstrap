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
		anonymousSubResourceIntegrity: 'sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh'.
	aRoot javascript
		url: 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js';
		anonymousSubResourceIntegrity: 'sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo'.
	aRoot javascript
		url:
			( 'https://stackpath.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js'
				expandMacrosWith: self version );
		anonymousSubResourceIntegrity: 'sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6'
]

{ #category : #versions }
Bootstrap4OnlineLibrary >> version [

	^'4.4.1'
]
