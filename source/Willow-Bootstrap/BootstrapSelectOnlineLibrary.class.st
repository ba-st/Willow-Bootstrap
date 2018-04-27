"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #BootstrapSelectOnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#instVars : [
		'locale'
	],
	#category : #'Willow-Bootstrap-Select'
}

{ #category : #accessing }
BootstrapSelectOnlineLibrary class >> default [

	^self inUSEnglish 
]

{ #category : #'Instance Creation' }
BootstrapSelectOnlineLibrary class >> inSpanish [

	^ self using: (WALocale fromString: 'es-ES')
]

{ #category : #'Instance Creation' }
BootstrapSelectOnlineLibrary class >> inUSEnglish [

	^ self using: (WALocale fromString: 'en-US')
]

{ #category : #'Instance Creation' }
BootstrapSelectOnlineLibrary class >> using: aWALocale [

	^ self new initializeUsing: aWALocale
]

{ #category : #initialization }
BootstrapSelectOnlineLibrary >> initializeUsing: aWALocale [

	locale := aWALocale
]

{ #category : #private }
BootstrapSelectOnlineLibrary >> updateLocaleIn: aRoot [

	| fileName |

	fileName := BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: locale.
	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/js/i18n/<2s>.min.js' expandMacrosWith: self version with: fileName)
]

{ #category : #Updating }
BootstrapSelectOnlineLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/css/bootstrap-select.min.css' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ='.
	aRoot javascript
		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/js/bootstrap-select.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY='.
	self updateLocaleIn: aRoot
]

{ #category : #Accessing }
BootstrapSelectOnlineLibrary >> version [

	^'1.12.4'
]
