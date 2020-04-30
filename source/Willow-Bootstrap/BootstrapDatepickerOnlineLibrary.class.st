"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #BootstrapDatepickerOnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#instVars : [
		'locale'
	],
	#category : #'Willow-Bootstrap-Datepicker'
}

{ #category : #'instance creation' }
BootstrapDatepickerOnlineLibrary class >> default [

	^ self using: (WALocale fromString: 'en')
]

{ #category : #'instance creation' }
BootstrapDatepickerOnlineLibrary class >> using: aWALocale [

	^ self new initializeUsing: aWALocale
]

{ #category : #initialization }
BootstrapDatepickerOnlineLibrary >> initializeUsing: aWALocale [

	locale := aWALocale
]

{ #category : #private }
BootstrapDatepickerOnlineLibrary >> updateLocaleIn: aRoot [

	| fileName |

	fileName := BootstrapDatepickerLanguageToFileNameTranslator new fileNameFrom: locale ifNone: [ "If nothing is specified the us locale will be used" ^ self ].
	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/locales/<2s>.min.js' expandMacrosWith: self version with: fileName)
]

{ #category : #Updating }
BootstrapDatepickerOnlineLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/css/bootstrap-datepicker3.min.css' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-FAOaXTpl90/K8cXmSdsskbQN3nKYulhCpPbcFzGTWKI='. 
	aRoot javascript
		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/js/bootstrap-datepicker.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-bqVeqGdJ7h/lYPq6xrPv/YGzMEb6dNxlfiTUHSgRCp8='.
	self updateLocaleIn: aRoot
]

{ #category : #Updating }
BootstrapDatepickerOnlineLibrary >> version [

	^ '1.9.0'
]
