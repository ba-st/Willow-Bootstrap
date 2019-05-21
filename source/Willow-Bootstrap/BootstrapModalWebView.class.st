"
I represent a Bootstrap Modal.
"
Class {
	#name : #BootstrapModalWebView,
	#superclass : #WAPainter,
	#instVars : [
		'footer',
		'dialog',
		'header'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapModalWebView class >> withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter [

	^ self
		withHeader: aBootstrapModalHeader
		content: aBodyView
		footer: aBootstrapModalFooter
		applyingToDialog: [ :dialog |  ]
		andModalDocument: [ :document |  ]
]

{ #category : #'Instance Creation' }
BootstrapModalWebView class >> withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andModalDocument: aModalDocumentCommand [

	^ self new
		initializeWithHeader: aBootstrapModalHeader
		content: aBodyView
		footer: aBootstrapModalFooter
		applyingToDialog: aDialogCommand
		andToDocument: aModalDocumentCommand
]

{ #category : #private }
BootstrapModalWebView >> contentWrapping: aBodyView [

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: header.
			canvas div with: aBodyView applying: [ :div | div addClass bootstrapCommon modalBody ].
			canvas render: footer
			]
		applying: [ :container | container addClass bootstrapCommon modalContent ]
]

{ #category : #private }
BootstrapModalWebView >> documentWrapping: content applying: aDocumentCommand [

	^ GenericContainerWebView
		wrapping: content
		applying: [ :container :constants | 
			container addClass bootstrapCommon modalDialog + ( container setARIARoleTo: #document )
				+ aDocumentCommand
			]
]

{ #category : #initialize }
BootstrapModalWebView >> initializeWithHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aModalDocumentCommand [

	header := aBootstrapModalHeader.
	footer := aBootstrapModalFooter.
	dialog := GenericContainerWebView
		wrapping: ( self documentWrapping: ( self contentWrapping: aBodyView ) applying: aModalDocumentCommand )
		applying: [ :container :constants | 
			container addClass bootstrapCommon modal + container disableTabCycle
				+ ( container setARIARoleTo: #dialog ) + aDialogCommand
			]
]

{ #category : #Configuring }
BootstrapModalWebView >> onCloseTrigger [

	^ CombinedWebInteractionInterpreter
		combining:
			{header onCloseTrigger.
			footer onCloseTrigger}
]

{ #category : #Configuring }
BootstrapModalWebView >> onTrigger [

	"The footer contains the buttons that can trigger some action (except the close button, but the modal have specific events for this action)"

	^ footer onTrigger
]

{ #category : #rendering }
BootstrapModalWebView >> renderContentOn: aCanvas [

	aCanvas render: dialog
]
