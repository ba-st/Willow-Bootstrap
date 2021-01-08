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
			( ContainerWebView
				wrapping: '×'
				intoElementBuiltUsing: [ :canvas | canvas span ]
				applying: [ :span | span setARIAAttribute: 'hidden' to: 'true' ] )
		applying: [ :button :constants | 
			button addClass bootstrapCommon close
				+ ( button setData: constants >> #bootstrap >> #dismiss to: aContainerType )
				+ ( button setARIAAttribute: 'label' to: 'Close' )
			]
]

{ #category : #configuring }
BootstrapDismissButton >> on [

	^ dismissButton on
]

{ #category : #configuring }
BootstrapDismissButton >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]

{ #category : #rendering }
BootstrapDismissButton >> renderContentOn: aCanvas [

	aCanvas render: dismissButton
]
