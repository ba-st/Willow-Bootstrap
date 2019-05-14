"
I'm a checkbox specifically designed to use the html structure required by Bootstrap.
"
Class {
	#name : #BootstrapCheckboxWebView,
	#superclass : #BinaryChoiceWebViewBehavior,
	#instVars : [
		'commandToComponent',
		'interactionInterpreter',
		'identifierAssigner',
		'isChecked',
		'labelOptional'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'instance creation' }
BootstrapCheckboxWebView class >> labeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ self
		labeledAccordingTo: (Optional containing: aRenderable)
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #'private-instance creation' }
BootstrapCheckboxWebView class >> labeledAccordingTo: aLabelOptional onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ (super onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff)
		initializeLabeledAccordingTo: aLabelOptional
		applying: aCommandToComponent asWebComponentCommand 
]

{ #category : #'instance creation' }
BootstrapCheckboxWebView class >> onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff [

	^ self
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: [ :checkbox |  ]
]

{ #category : #'instance creation' }
BootstrapCheckboxWebView class >> onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ self
		labeledAccordingTo: Optional unused
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #accessing }
BootstrapCheckboxWebView >> identifier [

	^ identifierAssigner assignedIdentifier
]

{ #category : #configuring }
BootstrapCheckboxWebView >> identifyIn: aCanvas [

	^ identifierAssigner identifyIn: aCanvas
]

{ #category : #initialization }
BootstrapCheckboxWebView >> initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent [

	labelOptional := anOptionalLabel.
	commandToComponent := aCommandToComponent.
	interactionInterpreter := WebInteractionInterpreter forClickOnHiddenInputDependentComponent.
	identifierAssigner := IdentifierAssigner prefixedBy: 'checkbox'.
	isChecked := true
]

{ #category : #configuring }
BootstrapCheckboxWebView >> onTrigger [

	^ interactionInterpreter
]

{ #category : #'rendering - private' }
BootstrapCheckboxWebView >> renderCheckboxOn: aCanvas [

	| checkbox |

	checkbox := aCanvas checkbox.
	checkbox
		apply: commandToComponent;
		value: isChecked;
		callback: [ :value | [ self toggleCurrentSelection ] unless: value = isChecked ].
	identifierAssigner withAssignedIdentifierDo: [ :id | checkbox id: id ].
	checkbox interactUsing: interactionInterpreter
]

{ #category : #rendering }
BootstrapCheckboxWebView >> renderContentOn: aCanvas [

	aCanvas div
		with: [ self renderLabelOn: aCanvas ]
		applying: [ :div | div addClass bootstrap3 checkbox + commandToComponent ]
]

{ #category : #'rendering - private' }
BootstrapCheckboxWebView >> renderLabelOn: aCanvas [

	aCanvas
		label: [ self renderCheckboxOn: aCanvas.
			labelOptional withContentDo: [ :label | aCanvas render: label ] ]
]

{ #category : #'Binary Choice-API' }
BootstrapCheckboxWebView >> selectOffModel [

	super selectOffModel.
	isChecked := false
]

{ #category : #'Binary Choice-API' }
BootstrapCheckboxWebView >> selectOnModel [

	super selectOnModel.
	isChecked := true
]

{ #category : #'Binary Choice-API' }
BootstrapCheckboxWebView >> toggleCurrentSelection [

	isChecked := isChecked not.
	super toggleCurrentSelection
]
