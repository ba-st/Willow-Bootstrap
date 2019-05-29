Class {
	#name : #BootstrapIconWebView,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #deprecation }
BootstrapIconWebView class >> isDeprecated [

	^ true
]

{ #category : #'Instance Creation' }
BootstrapIconWebView class >> representing: aGlyphiconName [

	self
		deprecated: 'Use Bootstrap3IconWebView'
		transformWith:
			'BootstrapIconWebView  representing: `@aGlyphiconName'
				-> 'Bootstrap3IconWebView  representing: `@aGlyphiconName'.

	^ Bootstrap3IconWebView representing: aGlyphiconName
]

{ #category : #'Instance Creation' }
BootstrapIconWebView class >> representing: aGlyphiconName applying: aCommandToComponent [

	self
		deprecated: 'Use Bootstrap3IconWebView'
		transformWith:
			'BootstrapIconWebView  representing: `@aGlyphiconName applying: `@aCommandToComponent'
				-> 'Bootstrap3IconWebView  representing: `@aGlyphiconName applying: `@aCommandToComponent'.

	^ Bootstrap3IconWebView representing: aGlyphiconName applying: aCommandToComponent
]
