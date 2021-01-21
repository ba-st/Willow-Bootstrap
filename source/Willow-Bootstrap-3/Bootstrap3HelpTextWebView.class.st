"
Block level help text for form controls.
"
Class {
	#name : #Bootstrap3HelpTextWebView,
	#superclass : #WAPainter,
	#instVars : [
		'fieldWebView',
		'helpText'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'Instance Creation' }
Bootstrap3HelpTextWebView class >> boundTo: aFieldWebView describedBy: aHelpText [

	^ self new initializeBoundTo: aFieldWebView describedBy: aHelpText
]

{ #category : #configuring }
Bootstrap3HelpTextWebView >> identifierOn: aCanvas [

	^ fieldWebView identifierOn: aCanvas
]

{ #category : #initialization }
Bootstrap3HelpTextWebView >> initializeBoundTo: aFieldWebView describedBy: aHelpText [

	fieldWebView := aFieldWebView.
	helpText := aHelpText
]

{ #category : #rendering }
Bootstrap3HelpTextWebView >> renderContentOn: aCanvas [

	aCanvas render: fieldWebView.
	aCanvas span with: helpText applying: [ :span | span addClass bootstrap3 helpBlock ]
]
