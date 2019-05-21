Class {
	#name : #Bootstrap4CheckboxWebView,
	#superclass : #BootstrapCheckboxWebView,
	#instVars : [
		'additionalInputCommand',
		'commandToContainer',
		'commandToLabel'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #configuring }
Bootstrap4CheckboxWebView >> beCustom [

	commandToContainer := [ :div | div addClass bootstrap4 customControl + div addClass bootstrap4 customCheckbox ].
	commandToLabel := [ :label | label addClass bootstrap4 customControlLabel ].
	additionalInputCommand := [ :input | input addClass bootstrap4 customControlInput ]
		asWebComponentCommand.
	labelOptional
		withContentDo: [  ]
		ifUnused: [ additionalInputCommand := additionalInputCommand
				+ [ :input | input addClass bootstrap4 positionStatic ]
			]
]

{ #category : #configuring }
Bootstrap4CheckboxWebView >> beSwitch [

	commandToContainer := [ :div | div addClass bootstrap4 customControl + div addClass bootstrap4 customSwitch ].
	commandToLabel := [ :label | label addClass bootstrap4 customControlLabel ].
	additionalInputCommand := [ :input | input addClass bootstrap4 customControlInput ]
		asWebComponentCommand.
	labelOptional
		withContentDo: [  ]
		ifUnused: [ additionalInputCommand := additionalInputCommand
				+ [ :input | input addClass bootstrap4 positionStatic ]
			]
]

{ #category : #'private - rendering' }
Bootstrap4CheckboxWebView >> commandToContainer [

	^ commandToContainer asWebComponentCommand + commandToComponent
]

{ #category : #'private - rendering' }
Bootstrap4CheckboxWebView >> commandToInput [

	^super commandToInput + additionalInputCommand
]

{ #category : #initialization }
Bootstrap4CheckboxWebView >> initializeDefaultCommands [

	commandToContainer := [ :div | div addClass bootstrap4 formCheck ].
	commandToLabel := [ :label | label addClass bootstrap4 formCheckLabel ].
	additionalInputCommand := [ :input | input addClass bootstrap4 formCheckInput ]
		asWebComponentCommand.
	labelOptional
		withContentDo: [  ]
		ifUnused: [ additionalInputCommand := additionalInputCommand
				+ [ :input | input addClass bootstrap4 positionStatic ]
			]
]

{ #category : #initialization }
Bootstrap4CheckboxWebView >> initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent [

	super initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent.
	self initializeDefaultCommands
]

{ #category : #rendering }
Bootstrap4CheckboxWebView >> renderContentOn: aCanvas [

	aCanvas div
		with: [ labelOptional withContentDo: [ self identifyIn: aCanvas ].
			self
				renderCheckboxOn: aCanvas;
				renderLabelOn: aCanvas
			]
		applying: self commandToContainer
]

{ #category : #'private - rendering' }
Bootstrap4CheckboxWebView >> renderLabelOn: aCanvas [

	labelOptional
		withContentDo: [ :labelContent | 
			aCanvas label
				for: self identifier;
				with: labelContent applying: commandToLabel
			]
]
