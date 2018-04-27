"
Extend form controls by adding text or buttons before, after, or on both sides of any text-based <input>
"
Class {
	#name : #BootstrapInputGroupWebView,
	#superclass : #WAPainter,
	#instVars : [
		'inputGroupContainer',
		'textFieldWebView'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> appending: aWebViewToAppend to: aTextFieldWebView applying: aComponentCommand [

	^ self
		wrapping: aTextFieldWebView
		between: [  ]
		and: aWebViewToAppend
		applying: aComponentCommand
]

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> prepending: aWebViewToPrepend to: aTextFieldWebView applying: aCompositeComponentCommand [

	^ self
		wrapping: aTextFieldWebView
		between: aWebViewToPrepend
		and: [  ]
		applying: aCompositeComponentCommand
]

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> wrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand [

	^ self new
		initializeWrapping: aTextFieldWebView
		between: aWebViewToPrepend
		and: aWebViewToAppend
		applying: [ :group | group addClass bootstrap inputGroup + aComponentCommand ] asWebComponentCommand
]

{ #category : #configuring }
BootstrapInputGroupWebView >> identifier [

	^ textFieldWebView identifier
]

{ #category : #configuring }
BootstrapInputGroupWebView >> identifyIn: aCanvas [

	^ textFieldWebView identifyIn: aCanvas
]

{ #category : #initialization }
BootstrapInputGroupWebView >> initializeWrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand [

	textFieldWebView := aTextFieldWebView.
	inputGroupContainer := GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render: aWebViewToPrepend;
				render: textFieldWebView;
				render: aWebViewToAppend ]
		applying: aComponentCommand
]

{ #category : #rendering }
BootstrapInputGroupWebView >> renderContentOn: aCanvas [

	aCanvas render: inputGroupContainer
]
