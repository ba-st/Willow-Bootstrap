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
		anonymousSubResourceIntegrity: 'sha512-aQb0/doxDGrw/OC7drNaJQkIKFu6eSWnVMAwPN64p6sZKeJ4QCDYL42Rumw2ZtL8DB9f66q4CnLIUnAw28dEbg=='. 
	aRoot javascript
		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/js/bootstrap-datepicker.min.js' expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw=='.
	self updateLocaleIn: aRoot
]

{ #category : #Updating }
BootstrapDatepickerOnlineLibrary >> version [

	^ '1.10.0'
]
