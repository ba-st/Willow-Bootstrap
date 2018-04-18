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
	#category : 'Willow-Bootstrap-WebViews'
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

{ #category : #'accessing - private' }
BootstrapCheckboxWebView >> commandToContainer [

	^ [ :container | container addClass bootstrap checkbox + commandToComponent ] asWebComponentCommand
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
	commandToComponent applyTo: checkbox on: aCanvas.
	checkbox
		value: isChecked;
		callback: [ :value | 
			value = isChecked
				ifFalse: [ self toggleCurrentSelection ] ].
	identifierAssigner withAssignedIdentifierDo: [ :id | checkbox id: id ].
	interactionInterpreter applyTo: checkbox on: aCanvas
]

{ #category : #rendering }
BootstrapCheckboxWebView >> renderContentOn: aCanvas [

	| div |

	div := aCanvas div.
	self commandToContainer applyTo: div on: aCanvas.
	div with:
		[ self renderLabelOn: aCanvas ]
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
