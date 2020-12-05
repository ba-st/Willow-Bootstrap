"
I'm a translator capable of taking an instance of WALocale and return the file name to be used in the libraries
"
Class {
	#name : #BootstrapDatepickerLanguageToFileNameTranslator,
	#superclass : #GRObject,
	#category : #'Willow-Bootstrap-Datepicker'
}

{ #category : #Accessing }
BootstrapDatepickerLanguageToFileNameTranslator >> fileNameFrom: aWALocale ifNone: aBlock [

	^ #('en-CA' 'en-AU' 'en-GB' 'en-IE' 'en-NZ' 'en-ZA' 'fr-CH' 'it-CH' 'pt-BR')
		detect: [ :locale | locale = aWALocale greaseString ]
		ifFound: [ :locale | 'bootstrap-datepicker.<1s>' expandMacrosWith: locale ]
		ifNone: [ #('de' 'es' 'fr' 'it' 'pt') detect: [ :language | language = aWALocale withoutCountry greaseString ] ifFound: [ :locale | 'bootstrap-datepicker.<1s>' expandMacrosWith: locale ] ifNone: aBlock ]
]
