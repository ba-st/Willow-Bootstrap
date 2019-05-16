Class {
	#name : #Bootstrap4CheckboxWebView,
	#superclass : #BootstrapCheckboxWebView,
	#instVars : [
		'additionalInputCommand'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #'rendering - private' }
Bootstrap4CheckboxWebView >> commandToInput [

	^super commandToInput + additionalInputCommand
]

{ #category : #initialization }
Bootstrap4CheckboxWebView >> initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent [

	super initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent.
	additionalInputCommand := ( labelOptional
		withContentDo: [ [ :input | input addClass bootstrap4 formCheckInput ] ]
		ifUnused:
			[ [ :input | input addClass bootstrap4 formCheckInput + input addClass bootstrap4 positionStatic ] ] )
		asWebComponentCommand
]

{ #category : #rendering }
Bootstrap4CheckboxWebView >> renderContentOn: aCanvas [

	aCanvas div
		with: [ labelOptional withContentDo: [ self identifyIn: aCanvas ].
			self
				renderCheckboxOn: aCanvas;
				renderLabelOn: aCanvas
			]
		applying: [ :div | div addClass bootstrap4 formCheck + commandToComponent ]
]

{ #category : #'rendering - private' }
Bootstrap4CheckboxWebView >> renderLabelOn: aCanvas [

	labelOptional
		withContentDo: [ :labelContent | 
			aCanvas label
				for: self identifier;
				with: labelContent applying: [ :label | label addClass bootstrap4 formCheckLabel ]
			]
]
