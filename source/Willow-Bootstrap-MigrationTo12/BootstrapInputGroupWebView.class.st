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
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> appending: aWebViewToAppend to: aTextFieldWebView applying: aComponentCommand [

	self deprecated: 'Use self componentSupplier fieldAddonBuilder in replacement'.
	self error: 'Deprecated'
]

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> isDeprecated [

	^ true
]

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> prepending: aWebViewToPrepend to: aTextFieldWebView applying: aCompositeComponentCommand [

	self deprecated: 'Use self componentSupplier fieldAddonBuilder in replacement'.
	self error: 'Deprecated'
]

{ #category : #'Instance Creation' }
BootstrapInputGroupWebView class >> wrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand [

	self deprecated: 'Use self componentSupplier fieldAddonBuilder in replacement'.
	self error: 'Deprecated'
]
