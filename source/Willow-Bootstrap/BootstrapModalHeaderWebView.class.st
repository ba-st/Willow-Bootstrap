"
I represent the header in a Bootstrap modal. I can include the dismiss button or not.
"
Class {
	#name : #BootstrapModalHeaderWebView,
	#superclass : #WAPainter,
	#instVars : [
		'title',
		'dismissButtonOptional'
	],
	#category : 'Willow-Bootstrap-WebViews'
}

{ #category : #'private - Instance Creation' }
BootstrapModalHeaderWebView class >> dismissButton [

	^ BootstrapDismissButton dismissing: BootstrapConstants modal
]

{ #category : #'Instance Creation' }
BootstrapModalHeaderWebView class >> dismissableTitled: aRenderable [

	^ self titled: aRenderable dismissedUsing: (Optional containing: self dismissButton)
]

{ #category : #'Instance Creation' }
BootstrapModalHeaderWebView class >> titled: aRenderable [

	^ self titled: aRenderable dismissedUsing: Optional unused
]

{ #category : #'private - Instance Creation' }
BootstrapModalHeaderWebView class >> titled: aRenderable dismissedUsing: aButtonOptional [

	^ self new initializeTitled: aRenderable dismissedUsing: aButtonOptional
]

{ #category : #initialize }
BootstrapModalHeaderWebView >> initializeTitled: aRenderable dismissedUsing: aButtonOptional [

	title := aRenderable.
	dismissButtonOptional := aButtonOptional
]

{ #category : #Configuring }
BootstrapModalHeaderWebView >> onCloseTrigger [

	^ dismissButtonOptional withContentDo: [ :dismissButton | dismissButton onTrigger ] ifUnused: [ WebInteractionInterpreter workingWith: WebComponentInteraction neverTriggered ]
]

{ #category : #rendering }
BootstrapModalHeaderWebView >> renderContentOn: aCanvas [

	aCanvas div
		class: BootstrapCssStyles modalHeader;
		with: [ dismissButtonOptional withContentDo: [ :dismissButton | aCanvas render: dismissButton ].
			aCanvas heading
				level4;
				class: BootstrapCssStyles modalTitle;
				with: title ]
]