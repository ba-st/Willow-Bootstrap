"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #BootstrapTypeaheadOnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#category : 'Willow-Bootstrap-Typeahead'
}

{ #category : #Updating }
BootstrapTypeaheadOnlineLibrary >> updateRoot: aRoot [

	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/<1s>/bootstrap3-typeahead.min.js' expandMacrosWith: self version)
]

{ #category : #versions }
BootstrapTypeaheadOnlineLibrary >> version [

	^ '4.0.2'
]
