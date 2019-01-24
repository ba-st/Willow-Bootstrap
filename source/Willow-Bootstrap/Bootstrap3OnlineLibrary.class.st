"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #Bootstrap3OnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#instVars : [
		'includeOptionalTheme'
	],
	#category : #'Willow-Bootstrap-Libraries'
}

{ #category : #'instance creation' }
Bootstrap3OnlineLibrary class >> default [

	^ self new initializeWithOptionalTheme: true
]

{ #category : #'instance creation' }
Bootstrap3OnlineLibrary class >> withoutOptionalTheme [

	^ self new initializeWithOptionalTheme: false
]

{ #category : #initialization }
Bootstrap3OnlineLibrary >> initializeWithOptionalTheme: aBoolean [

	includeOptionalTheme := aBoolean
]

{ #category : #Updating }
Bootstrap3OnlineLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+'.
	includeOptionalTheme
		ifTrue: [ aRoot stylesheet
				url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap-theme.min.css' expandMacrosWith: self version);
				anonymousSubResourceIntegrity: 'sha384-jzngWsPS6op3fgRCDTESqrEJwRKck+CILhJVO5VvaAZCq8JYf8HsR/HPpBOOPZfR' ].
	aRoot javascript
		url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha384-vhJnz1OVIdLktyixHY4Uk3OHEwdQqPppqYR8+5mjsauETgLOcEynD9oPHhhz18Nw'
]

{ #category : #Accessing }
Bootstrap3OnlineLibrary >> version [

	^'3.4.0'
]
