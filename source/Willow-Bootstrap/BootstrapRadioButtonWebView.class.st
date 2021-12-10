Class {
	#name : #BootstrapRadioButtonWebView,
	#superclass : #SingleSelectionWebViewBehavior,
	#instVars : [
		'interactionInterpreter',
		'identifierAssigner',
		'inputCommand',
		'labelCommand',
		'containerCommand',
		'itemRenderer'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'private - rendering' }
BootstrapRadioButtonWebView >> activeLabelCommandFor: anElement [ 

	self subclassResponsibility 
]

{ #category : #configuring }
BootstrapRadioButtonWebView >> beIdentifiable [

	^ identifierAssigner beRequired
]

{ #category : #rendering }
BootstrapRadioButtonWebView >> groupContainerCommand [

	self subclassResponsibility 
]

{ #category : #initialization }
BootstrapRadioButtonWebView >> initializeRenderingWith: aRenderingBlock
	applyingToContainer: aContainerCommand
	applyingToLabel: aLabelCommand
	applyingToInput: anInputCommand [

	itemRenderer := aRenderingBlock.
	containerCommand := aContainerCommand.
	labelCommand := aLabelCommand.
	inputCommand := anInputCommand.
	interactionInterpreter := EventInterpreterDispatcher defaultingToChange.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'
]

{ #category : #configuring }
BootstrapRadioButtonWebView >> on [

	^interactionInterpreter
]

{ #category : #rendering }
BootstrapRadioButtonWebView >> renderContentOn: aCanvas [

	| container |

	container := aCanvas div.
	identifierAssigner applyTo: container on: aCanvas.
	container
		apply: self groupContainerCommand;
		with: [ :div | self renderRadioGroupOn: div ]
]

{ #category : #'private - rendering' }
BootstrapRadioButtonWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	| radioButton |

	radioButton := aRadioGroup radioButton.
	identifierAssigner applyTo: radioButton on: aCanvas.
	inputCommand applyTo: radioButton on: aCanvas.
	interactionInterpreter applyTo: radioButton on: aCanvas.
	radioButton value: anElement.
	self renderLabelContentFor: anElement on: aCanvas
]

{ #category : #'private - rendering' }
BootstrapRadioButtonWebView >> renderLabelContentFor: anElement on: aCanvas [

	aCanvas render: (itemRenderer value: anElement)
]

{ #category : #rendering }
BootstrapRadioButtonWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	self subclassResponsibility 
]

{ #category : #'private - rendering' }
BootstrapRadioButtonWebView >> renderRadioGroupOn: div [

	div radioGroup
		callback: [:element | self choose: element];
		with: [:radioGroup |
			chosenElementOptional
				withContentDo: [:chosenElement | radioGroup selected: chosenElement].
			availableElements
				do: [:element | self renderRadioButtonFor: element asPartOf: radioGroup on: div]]
]
