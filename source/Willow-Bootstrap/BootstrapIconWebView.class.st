"
I'm a bootstrap icon.. basically a span with the correct classes.
"
Class {
	#name : #BootstrapIconWebView,
	#superclass : #WAPainter,
	#instVars : [
		'container'
	],
	#category : 'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapIconWebView class >> applying: aComponentCommand [ 
	
	^self new initializeApplying: aComponentCommand 
]

{ #category : #private }
BootstrapIconWebView class >> classificationCommandFor: aGlyphiconName [

	^ ComponentClassificationCommand
		toStyleWithAll: (Array with: BootstrapCssStyles glyphicon with: aGlyphiconName)
]

{ #category : #'Instance Creation' }
BootstrapIconWebView class >> representing: aGlyphiconName [

	^ self applying: (self classificationCommandFor: aGlyphiconName)
]

{ #category : #'Instance Creation' }
BootstrapIconWebView class >> representing: aGlyphiconName applying: aCommandToComponent [

	^ self applying: (self classificationCommandFor: aGlyphiconName) + aCommandToComponent
]

{ #category : #initialize }
BootstrapIconWebView >> initializeApplying: aComponentCommand [

	container := PhrasingContainerWebView wrapping: '' applying: aComponentCommand
]

{ #category : #initialize }
BootstrapIconWebView >> renderContentOn: aCanvas [

	aCanvas render: container
]
