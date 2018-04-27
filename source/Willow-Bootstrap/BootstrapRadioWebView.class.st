"
I'm a radio button group specifically designed to use the html structure required by Bootstrap.
"
Class {
	#name : #BootstrapRadioWebView,
	#superclass : #SingleSelectionWebViewBehavior,
	#instVars : [
		'interactionInterpreter',
		'renderingBlock',
		'identifierAssigner',
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

{ #category : #configuring }
BootstrapRadioWebView >> identifyIn: aCanvas [

	^identifierAssigner identifyIn: aCanvas
]

{ #category : #initialization }
BootstrapRadioWebView >> initializeRenderingWith: aRenderingBlock
	applyingToLabel: aLabelCommand
	applyingToInput: anInputCommand [

	renderingBlock := aRenderingBlock.
	labelCommand := aLabelCommand.
	inputCommand := anInputCommand.
	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'
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

	| radioButton |

	radioButton := aRadioGroup radioButton.
	identifierAssigner withAssignedIdentifierDo: [ :id | radioButton id: id ].
	inputCommand applyTo: radioButton on: aCanvas.
	interactionInterpreter applyTo: radioButton on: aCanvas.
	radioButton value: anElement.
	self renderLabelContentFor: anElement on: aCanvas
]

{ #category : #'private-rendering' }
BootstrapRadioWebView >> renderLabelContentFor: anElement on: aCanvas [

	aCanvas render: (renderingBlock value: anElement)
]

{ #category : #'private-rendering' }
BootstrapRadioWebView >> renderLabelOn: aCanvas with: aRenderable [

	| label |

	label := aCanvas label.
	labelCommand applyTo: label on: aCanvas.
	label with: aRenderable
]

{ #category : #'private-rendering' }
BootstrapRadioWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [
 		
	 self renderLabelOn: aCanvas
			with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ] 
]
