"
I'm a view representing an split button
"
Class {
	#name : #BootstrapSplitButtonWebView,
	#superclass : #WAPainter,
	#instVars : [
		'buttonGroup',
		'mainButton'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapSplitButtonWebView class >> with: aGenericContainerWebView and: anAsynchronicButtonWebView [

	^ self new initializeWith: aGenericContainerWebView and: anAsynchronicButtonWebView
]

{ #category : #initialization }
BootstrapSplitButtonWebView >> initializeWith: aGenericContainerWebView and: anAsynchronicButtonWebView [

	buttonGroup := aGenericContainerWebView.
	mainButton := anAsynchronicButtonWebView
]

{ #category : #configuring }
BootstrapSplitButtonWebView >> on [

	^ mainButton on
]

{ #category : #configuring }
BootstrapSplitButtonWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]

{ #category : #rendering }
BootstrapSplitButtonWebView >> renderContentOn: aCanvas [

	aCanvas render: buttonGroup
]
