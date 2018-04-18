"
I'm a builder easing the creation of bootstrap modals.
"
Class {
	#name : #BootstrapModalBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'headerBinding',
		'content',
		'footerCloseButton',
		'additionalFooterButtons',
		'dialogCommand'
	],
	#category : 'Willow-Bootstrap-WebViews'
}

{ #category : #Configuring }
BootstrapModalBuilder >> addFooterButton: aButton [

	additionalFooterButtons add: aButton
]

{ #category : #Configuring }
BootstrapModalBuilder >> applyingToDialog: aDialogCommand [

	dialogCommand := dialogCommand + aDialogCommand
]

{ #category : #Configuring }
BootstrapModalBuilder >> beSelfCleaning [

	self applyingToDialog: BootstrapSelfCleaningModalCommand new
]

{ #category : #building }
BootstrapModalBuilder >> buildApplying: aDocumentCommand [

	^ BootstrapModalWebView
		withHeader: headerBinding content
		content: content
		footer: (BootstrapModalFooterWebView containing: additionalFooterButtons andCloseButton: footerCloseButton)
		applyingToDialog: dialogCommand
		andModalDocument: aDocumentCommand
]

{ #category : #Configuring }
BootstrapModalBuilder >> closeButtonLabeled: aRenderable applying: aCommand [

	footerCloseButton := BootstrapModalFooterWebView closeButtonLabeled: aRenderable applying: aCommand
]

{ #category : #Configuring }
BootstrapModalBuilder >> dismissableHeaderTitled: aRenderable [

	headerBinding := Binding to: (BootstrapModalHeaderWebView dismissableTitled: aRenderable)
]

{ #category : #Configuring }
BootstrapModalBuilder >> headerTitled: aRenderable [

	headerBinding := Binding to: (BootstrapModalHeaderWebView titled: aRenderable)
]

{ #category : #initialization }
BootstrapModalBuilder >> initialize [

	super initialize.
	headerBinding := Binding undefinedExplainedBy: 'Missing header definition'.
	content := ''.
	footerCloseButton := BootstrapModalFooterWebView
		closeButtonLabeled: 'Close'
		applying: [  ].
	additionalFooterButtons := OrderedCollection new.
	dialogCommand := [  ] asWebComponentCommand
]

{ #category : #Configuring }
BootstrapModalBuilder >> wrapping: theContent [

	content := theContent 
]
