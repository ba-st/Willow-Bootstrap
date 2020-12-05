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
		anonymousSubResourceIntegrity: 'sha256-g19F2KOr/H58l6XdI/rhCdEK3NmB8OILHwP/QYBQ8M4='.
	aRoot javascript
		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/js/bootstrap-select.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-COIM4OdXvo3jkE0/jD/QIEDe3x0jRuqHhOdGTkno3uM='.
	self updateLocaleIn: aRoot 
]

{ #category : #Accessing }
BootstrapSelectOnlineLibrary >> version [

	^'1.13.16'
]
