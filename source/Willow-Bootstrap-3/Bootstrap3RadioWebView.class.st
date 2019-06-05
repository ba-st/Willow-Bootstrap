Class {
	#name : #Bootstrap3RadioWebView,
	#superclass : #BootstrapRadioWebView,
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'private-rendering' }
Bootstrap3RadioWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	super renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas.
	self renderLabelContentFor: anElement on: aCanvas
]

{ #category : #'private-rendering' }
Bootstrap3RadioWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	aCanvas label
		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]
		applying: labelCommand
]
