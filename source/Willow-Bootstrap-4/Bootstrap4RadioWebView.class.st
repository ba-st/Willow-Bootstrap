Class {
	#name : #Bootstrap4RadioWebView,
	#superclass : #BootstrapRadioWebView,
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #initialization }
Bootstrap4RadioWebView >> initializeRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	super
		initializeRenderingWith: aRenderingBlock
		applyingToLabel: aLabelCommand
		applyingToInput: anInputCommand.
	labelCommand := labelCommand + [ :label | label addClass bootstrap4 formCheckLabel ].
	inputCommand := inputCommand + [ :radio | radio addClass bootstrap4 formCheckInput ]
]

{ #category : #'private-rendering' }
Bootstrap4RadioWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	| radioButton |

	radioButton := super renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas.
	aCanvas label
		for: radioButton id;
		with: [ self renderLabelContentFor: anElement on: aCanvas ] applying: labelCommand
]

{ #category : #'private-rendering' }
Bootstrap4RadioWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	aCanvas div
		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]
		applying: [ :div | div addClass bootstrap4 formCheck ]
]
