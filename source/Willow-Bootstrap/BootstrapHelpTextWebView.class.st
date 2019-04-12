"
Block level help text for form controls.
"
Class {
	#name : #BootstrapHelpTextWebView,
	#superclass : #WAPainter,
	#instVars : [
		'fieldWebView',
		'helpText'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapHelpTextWebView class >> boundTo: aFieldWebView describedBy: aHelpText [

	^ self new initializeBoundTo: aFieldWebView describedBy: aHelpText
]

{ #category : #configuring }
BootstrapHelpTextWebView >> identifyIn: aCanvas [

	^ fieldWebView identifyIn: aCanvas
]

{ #category : #initialization }
BootstrapHelpTextWebView >> initializeBoundTo: aFieldWebView describedBy: aHelpText [

	fieldWebView := aFieldWebView.
	helpText := aHelpText
]

{ #category : #rendering }
BootstrapHelpTextWebView >> renderContentOn: aCanvas [

	aCanvas render: fieldWebView.
	aCanvas span with: helpText applying: [ :span | span addClass bootstrap3 helpBlock ]
]
