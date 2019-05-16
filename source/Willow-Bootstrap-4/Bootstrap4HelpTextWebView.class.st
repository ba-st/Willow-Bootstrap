Class {
	#name : #Bootstrap4HelpTextWebView,
	#superclass : #WAPainter,
	#instVars : [
		'fieldWebView',
		'helpText'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #'Instance Creation' }
Bootstrap4HelpTextWebView class >> boundTo: aFieldWebView describedBy: aHelpText [

	^ self new initializeBoundTo: aFieldWebView describedBy: aHelpText
]

{ #category : #configuring }
Bootstrap4HelpTextWebView >> identifyIn: aCanvas [

	^ fieldWebView identifyIn: aCanvas
]

{ #category : #initialization }
Bootstrap4HelpTextWebView >> initializeBoundTo: aFieldWebView describedBy: aHelpText [

	fieldWebView := aFieldWebView.
	helpText := aHelpText
]

{ #category : #rendering }
Bootstrap4HelpTextWebView >> renderContentOn: aCanvas [

	aCanvas render: fieldWebView.
	aCanvas small with: helpText applying: [ :span | span addClass bootstrap4 formText ]
]
