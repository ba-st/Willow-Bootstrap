Class {
	#name : #Bootstrap3CheckboxWebView,
	#superclass : #BootstrapCheckboxWebView,
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #rendering }
Bootstrap3CheckboxWebView >> renderContentOn: aCanvas [

	aCanvas div
		with: [ self renderLabelOn: aCanvas ]
		applying: [ :div | div addClass bootstrap3 checkbox + commandToComponent ]
]

{ #category : #'rendering - private' }
Bootstrap3CheckboxWebView >> renderLabelOn: aCanvas [

	aCanvas
		label: [ self renderCheckboxOn: aCanvas.
			labelOptional withContentDo: [ :label | aCanvas render: label ] ]
]
