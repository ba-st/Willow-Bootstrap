"
I'm a dismiss button able to dismiss modals or alerts.
"
Class {
	#name : #BootstrapDismissButton,
	#superclass : #WAPainter,
	#instVars : [
		'dismissButton'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapDismissButton class >> dismissing: aContainerType [

	^ self new initializeDismissing: aContainerType
]

{ #category : #initialization }
BootstrapDismissButton >> initializeDismissing: aContainerType [

	dismissButton := AsynchronicButtonWebView
		labeled:
			( PhrasingContainerWebView
				wrapping: '×'
				applying: [ :span | span setARIAAttribute: 'hidden' to: 'true' ] )
		applying: [ :button :constants | 
			button addClass bootstrap3 close
				+ ( button setData: constants >> #bootstrap3 >> #dismiss to: aContainerType )
				+ ( button setARIAAttribute: 'label' to: 'Close' )
			]
]

{ #category : #configuring }
BootstrapDismissButton >> onTrigger [

	^ dismissButton onTrigger
]

{ #category : #rendering }
BootstrapDismissButton >> renderContentOn: aCanvas [

	aCanvas render: dismissButton
]
