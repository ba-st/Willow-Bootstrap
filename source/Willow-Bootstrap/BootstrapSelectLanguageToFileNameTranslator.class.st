"
I'm a translator capable of taking an instance of WALocale and return the file name to be used in the libraries
"
Class {
	#name : #BootstrapSelectLanguageToFileNameTranslator,
	#superclass : #GRObject,
	#category : 'Willow-Bootstrap-Select'
}

{ #category : #Accessing }
BootstrapSelectLanguageToFileNameTranslator >> fileNameFrom: aWALocale [

	^ #('en-US' 'de-DE' 'es-ES' 'es-CL' 'fr-FR' 'it-IT' 'pt-BR' 'pt-PT' 'ja-JP' 'et-EE' 'kh-KM' 'vi-VN')
		detect: [ :locale | locale = aWALocale greaseString ]
		ifFound: [ :locale | 'defaults-<1s>_<2s>' expandMacrosWith: aWALocale language with: aWALocale country asUppercase ]
		ifNone: [ aWALocale withoutCountry greaseString = 'en'
				ifTrue: [ 'defaults-en_US' ]
				ifFalse: [ #('de' 'en' 'es' 'fr' 'it' 'pt')
						detect: [ :language | language = aWALocale withoutCountry greaseString ]
						ifFound: [ :locale | 'defaults-<1s>_<2s>' expandMacrosWith: locale with: locale asUppercase ]
						ifNone: [ 'defaults-en_US' ] ] ]
]
