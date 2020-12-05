"
I'm a radio button group specifically designed to use the html structure required by Bootstrap.
"
Class {
	#name : #BootstrapRadioWebView,
	#superclass : #SingleSelectionWebViewBehavior,
	#instVars : [
		'interactionInterpreter',
		'renderingBlock',
		'labelCommand',
		'inputCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'instance creation' }
BootstrapRadioWebView class >> renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	^self new
		initializeRenderingWith: aRenderingBlock
		applyingToLabel: aLabelCommand asWebComponentCommand
		applyingToInput: anInputCommand asWebComponentCommand
]

{ #category : #initialization }
BootstrapRadioWebView >> initializeRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	renderingBlock := aRenderingBlock.
	labelCommand := aLabelCommand.
	inputCommand := anInputCommand.
	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue
]

{ #category : #'private - accessing' }
BootstrapRadioWebView >> inputCommand [

	^ inputCommand
]

{ #category : #configuring }
BootstrapRadioWebView >> onTrigger [

	^ interactionInterpreter
]

{ #category : #rendering }
BootstrapRadioWebView >> renderContentOn: aCanvas [

	aCanvas radioGroup
		callback: [ :element | self choose: element ];
		with: [ :radioGroup | 
			chosenElementOptional withContentDo: [ :chosenElement | radioGroup selected: chosenElement ].
			availableElements do: [ :element | self renderRadioButtonFor: element asPartOf: radioGroup on: aCanvas ] ]
]

{ #category : #'private-rendering' }
BootstrapRadioWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	| radioButton radioButtonId |

	radioButtonId := ( IdentifierAssigner prefixedBy: 'radio-button' ) identifyIn: aCanvas.

	radioButton := aRadioGroup radioButton.
	radioButton
		id: radioButtonId;
		apply: self inputCommand;
		interactUsing: interactionInterpreter;
		value: anElement.
	^ radioButton
]

{ #category : #'private-rendering' }
BootstrapRadioWebView >> renderLabelContentFor: anElement on: aCanvas [

	aCanvas render: (renderingBlock value: anElement)
]

{ #category : #'private-rendering' }
BootstrapRadioWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	self subclassResponsibility
]
