Class {
	#name : #Bootstrap3RadioButtonWebView,
	#superclass : #SingleSelectionWebViewBehavior,
	#instVars : [
		'itemRenderer',
		'containerCommand',
		'labelCommand',
		'inputCommand',
		'interactionInterpreter',
		'identifierAssigner'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'as yet unclassified' }
Bootstrap3RadioButtonWebView class >> renderingWith: aItemRenderer applyingToContainer: aContainerCommand applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	^ self new
		initializeRenderingWith: aItemRenderer
		applyingToContainer: aContainerCommand asWebComponentCommand
		applyingToLabel: aLabelCommand asWebComponentCommand
		applyingToInput: anInputCommand asWebComponentCommand
]

{ #category : #'private-rendering' }
Bootstrap3RadioButtonWebView >> activeLabelCommandFor: anElement [

	chosenElementOptional
		withContentDo: [ :chosenElement | 
			anElement = chosenElement
				ifTrue: [ ^ [ :label | label addClass bootstrapCommon active ] ]
			].

	^ [  ]
]

{ #category : #'private-rendering' }
Bootstrap3RadioButtonWebView >> buttonStyleCommandFor: anElement [

	^ [ :label | 
	label addClass bootstrap button + label addClass bootstrap buttonDefault
		+ ( self activeLabelCommandFor: anElement ) + labelCommand
	]
]

{ #category : #configuring }
Bootstrap3RadioButtonWebView >> identifyIn: aCanvas [

	^identifierAssigner identifyIn: aCanvas
]

{ #category : #initialization }
Bootstrap3RadioButtonWebView >> initializeRenderingWith: aRenderingBlock applyingToContainer: aContainerCommand applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	itemRenderer := aRenderingBlock.
	containerCommand := aContainerCommand.
	labelCommand := aLabelCommand.
	inputCommand := anInputCommand.
	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'
]

{ #category : #configuring }
Bootstrap3RadioButtonWebView >> onTrigger [

	^ interactionInterpreter
]

{ #category : #rendering }
Bootstrap3RadioButtonWebView >> renderContentOn: aCanvas [

	aCanvas div
		apply: [ :div | 
			div addClass bootstrap3 buttonGroup
				+ ( div setAttribute: #'data-toggle' greaseString to: #buttons greaseString )
				+ ( div setAttribute: #role greaseString to: #group greaseString ) + containerCommand
			];
		with: [ :div | self renderRadioGroupOn: div ]
]

{ #category : #'private-rendering' }
Bootstrap3RadioButtonWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	| radioButton |

	radioButton := aRadioGroup radioButton.
	identifierAssigner withAssignedIdentifierDo: [ :id | radioButton id: id ].
	inputCommand applyTo: radioButton on: aCanvas.
	interactionInterpreter applyTo: radioButton on: aCanvas.
	radioButton value: anElement.
	self renderLabelContentFor: anElement on: aCanvas
]

{ #category : #'private-rendering' }
Bootstrap3RadioButtonWebView >> renderLabelContentFor: anElement on: aCanvas [

	aCanvas render: ( itemRenderer value: anElement )
]

{ #category : #'private-rendering' }
Bootstrap3RadioButtonWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	aCanvas label
		apply: [ :label | 
			label addClass bootstrap3 button + label addClass bootstrap3 buttonDefault
				+ ( self activeLabelCommandFor: anElement ) + labelCommand
			];
		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]
]

{ #category : #'private-rendering' }
Bootstrap3RadioButtonWebView >> renderRadioGroupOn: div [

	^ div radioGroup
		callback: [ :element | self choose: element ];
		with: [ :radioGroup | 
			chosenElementOptional withContentDo: [ :chosenElement | radioGroup selected: chosenElement ].
			availableElements
				do: [ :element | self renderRadioButtonFor: element asPartOf: radioGroup on: div ]
			]
]
