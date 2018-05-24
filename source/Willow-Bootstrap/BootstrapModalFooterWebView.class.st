"
I represent the footer in a Bootstrap modal.
"
Class {
	#name : #BootstrapModalFooterWebView,
	#superclass : #WAPainter,
	#instVars : [
		'closeButton',
		'buttons'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #Building }
BootstrapModalFooterWebView class >> closeButtonLabeled: aRenderable applying: aComponentCommand [

	^ AsynchronicButtonWebView
		labeled: aRenderable
		applying: [ :button :constants | button addClass bootstrap button + (button setData: constants >> #bootstrap >> #dismiss to: constants >> #bootstrap >> #modal) + aComponentCommand ]
]

{ #category : #'Instance Creation' }
BootstrapModalFooterWebView class >> containing: aButtonCollection andCloseButton: aCloseButton [

	^ self new initializeContaining: aButtonCollection andCloseButton: aCloseButton
]

{ #category : #'Instance Creation' }
BootstrapModalFooterWebView class >> with: aButtonWebView andCloseButtonLabeled: aRenderable applyingToIt: aCloseButtonCommand [

	^ self containing: {aButtonWebView} andCloseButton: (self closeButtonLabeled: aRenderable applying: aCloseButtonCommand)
]

{ #category : #'Instance Creation' }
BootstrapModalFooterWebView class >> withCloseButtonLabeled: aRenderable applying: aComponentCommand [

	^ self containing: #() andCloseButton: (self closeButtonLabeled: aRenderable applying: aComponentCommand)
]

{ #category : #initialize }
BootstrapModalFooterWebView >> initializeContaining: aButtonCollection andCloseButton: aCloseButton [

	buttons := aButtonCollection.
	closeButton := aCloseButton 
]

{ #category : #Configuring }
BootstrapModalFooterWebView >> onCloseTrigger [

	^ closeButton onTrigger
]

{ #category : #Configuring }
BootstrapModalFooterWebView >> onTrigger [

	^ CombinedWebInteractionInterpreter combiningInterpretersOf: buttons
]

{ #category : #rendering }
BootstrapModalFooterWebView >> renderContentOn: aCanvas [

	aCanvas div
		with: [ aCanvas render: closeButton.
			buttons
				do: [ :button | 
					button identifyIn: aCanvas.
					aCanvas render: button ] ]
		applying: [ :div | div addClass bootstrap modalFooter ]
]
