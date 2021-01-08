"
I'm a bootstrap icon.. basically a span with the correct classes.
"
Class {
	#name : #Bootstrap3IconWebView,
	#superclass : #WAPainter,
	#instVars : [
		'containerCommand'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #private }
Bootstrap3IconWebView class >> applying: aComponentCommand [ 
	
	^self new initializeApplying: aComponentCommand 
]

{ #category : #private }
Bootstrap3IconWebView class >> classificationCommandFor: aGlyphiconName [

	^ [ :span | span addClass bootstrap3 glyphicon + ( ComponentClassificationCommand toStyleWith: aGlyphiconName ) ]
		asWebComponentCommand
]

{ #category : #'Instance Creation' }
Bootstrap3IconWebView class >> representing: aGlyphiconName [

	^ self applying: (self classificationCommandFor: aGlyphiconName)
]

{ #category : #'Instance Creation' }
Bootstrap3IconWebView class >> representing: aGlyphiconName applying: aCommandToComponent [

	^ self applying: (self classificationCommandFor: aGlyphiconName) + aCommandToComponent
]

{ #category : #initialize }
Bootstrap3IconWebView >> initializeApplying: aComponentCommand [

	containerCommand := aComponentCommand
]

{ #category : #initialize }
Bootstrap3IconWebView >> renderContentOn: aCanvas [

	aCanvas span apply: containerCommand
]
