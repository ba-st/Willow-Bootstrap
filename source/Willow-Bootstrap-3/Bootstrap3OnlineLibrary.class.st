"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #Bootstrap3OnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#instVars : [
		'includeOptionalTheme'
	],
	#category : #'Willow-Bootstrap-3-Libraries'
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
		anonymousSubResourceIntegrity: 'sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu'.
	includeOptionalTheme
		then: [ aRoot stylesheet
				url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap-theme.min.css' expandMacrosWith: self version);
				anonymousSubResourceIntegrity: 'sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ' ].
	aRoot javascript
		url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd'
]

{ #category : #Accessing }
Bootstrap3OnlineLibrary >> version [

	^'3.4.1'
]
