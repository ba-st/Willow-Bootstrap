Class {
	#name : #Bootstrap4RadioWebView,
	#superclass : #BootstrapRadioWebView,
	#instVars : [
		'inputContainerCommand',
		'additionalInputCommand',
		'additionalLabelCommand'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #configuring }
Bootstrap4RadioWebView >> beCustom [

	inputContainerCommand := [ :div | div addClass bootstrap4 customControl + div addClass bootstrap4 customRadio ].
	additionalInputCommand := [ :radio | radio addClass bootstrap4 customControlInput ].
	additionalLabelCommand := [ :label | label addClass bootstrap4 customControlLabel ]
]

{ #category : #initialization }
Bootstrap4RadioWebView >> initializeRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	super
		initializeRenderingWith: aRenderingBlock
		applyingToLabel: aLabelCommand
		applyingToInput: anInputCommand.
	additionalLabelCommand := [ :label | label addClass bootstrap4 formCheckLabel ].
	additionalInputCommand := [ :radio | radio addClass bootstrap4 formCheckInput ].
	inputContainerCommand := [ :div | div addClass bootstrap4 formCheck ]
]

{ #category : #'private - accessing' }
Bootstrap4RadioWebView >> inputCommand [

	^ super inputCommand + additionalInputCommand
]

{ #category : #'private - accessing' }
Bootstrap4RadioWebView >> labelCommand [

	^ labelCommand + additionalLabelCommand
]

{ #category : #'private-rendering' }
Bootstrap4RadioWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	| radioButton |

	radioButton := super renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas.
	aCanvas label
		for: radioButton id;
		with: [ self renderLabelContentFor: anElement on: aCanvas ] applying: self labelCommand
]

{ #category : #'private-rendering' }
Bootstrap4RadioWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	aCanvas div
		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]
		applying: inputContainerCommand
]
