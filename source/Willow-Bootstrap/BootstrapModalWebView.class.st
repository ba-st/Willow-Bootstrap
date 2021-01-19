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

	^ self
		divisionContainerWrapping: [ :canvas | 
			canvas render: header.
			canvas div with: aBodyView applying: [ :div | div addClass bootstrapCommon modalBody ].
			canvas render: footer
			]
		applying: [ :container | container addClass bootstrapCommon modalContent ]
]

{ #category : #private }
BootstrapModalWebView >> divisionContainerWrapping: aContentView applying: aCommandToComponent [

	"We can't reference the component supplier since this view could be used from a library where there is no session defined."

	^ ContainerWebView
		wrapping: aContentView
		intoElementBuiltUsing: [ :canvas | canvas div ]
		applying: aCommandToComponent
]

{ #category : #private }
BootstrapModalWebView >> documentWrapping: content applying: aDocumentCommand [

	^ self
		divisionContainerWrapping: content
		applying: [ :container :constants | 
			container addClass bootstrapCommon modalDialog + ( container setARIARoleTo: #document )
				+ aDocumentCommand
			]
]

{ #category : #initialize }
BootstrapModalWebView >> initializeWithHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aModalDocumentCommand [

	header := aBootstrapModalHeader.
	footer := aBootstrapModalFooter.

	dialog := self
		divisionContainerWrapping: ( self documentWrapping: ( self contentWrapping: aBodyView ) applying: aModalDocumentCommand )
		applying: [ :container :constants | 
			container addClass bootstrapCommon modal + container disableTabCycle
				+ ( container setARIARoleTo: #dialog ) + aDialogCommand
			]
]

{ #category : #Configuring }
BootstrapModalWebView >> on [

	"The footer contains the buttons that can trigger some action (except the close button, but the modal have specific events for this action)"

	^ footer on
]

{ #category : #Configuring }
BootstrapModalWebView >> onClose [

	^ CombinedWebInteractionInterpreter
		combining:
			{header onClose.
			footer onClose}
]

{ #category : #rendering }
BootstrapModalWebView >> renderContentOn: aCanvas [

	aCanvas render: dialog
]
