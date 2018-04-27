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
		url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u'.
	includeOptionalTheme
		ifTrue: [ aRoot stylesheet
				url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap-theme.min.css' expandMacrosWith: self version);
				anonymousSubResourceIntegrity: 'sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp' ].
	aRoot javascript
		url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa'
]

{ #category : #Accessing }
Bootstrap3OnlineLibrary >> version [

	^'3.3.7'
]
