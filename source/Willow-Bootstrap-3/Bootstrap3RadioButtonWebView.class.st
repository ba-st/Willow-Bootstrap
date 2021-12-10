Class {
	#name : #Bootstrap3RadioButtonWebView,
	#superclass : #BootstrapRadioButtonWebView,
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'instance creation' }
Bootstrap3RadioButtonWebView class >> renderingWith: aItemRenderer
	applyingToContainer: aContainerCommand
	applyingToLabel: aLabelCommand
	applyingToInput: anInputCommand [

	^self new
		initializeRenderingWith: aItemRenderer
		applyingToContainer: aContainerCommand asWebComponentCommand
		applyingToLabel: aLabelCommand asWebComponentCommand
		applyingToInput: anInputCommand asWebComponentCommand
]

{ #category : #'private - rendering' }
Bootstrap3RadioButtonWebView >> activeLabelCommandFor: anElement [

	chosenElementOptional withContentDo: [:chosenElement |
		anElement = chosenElement ifTrue: [^[:label | label addClass bootstrap3 active]]].

	^[]
]

{ #category : #rendering }
Bootstrap3RadioButtonWebView >> groupContainerCommand [

	^ [ :div | 
	div addClass bootstrap3 buttonGroup
		+ ( div setAttribute: #'data-toggle' greaseString to: #buttons greaseString )
		+ ( div setAttribute: #role greaseString to: #group greaseString ) + containerCommand
	]
]

{ #category : #'private - rendering' }
Bootstrap3RadioButtonWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	aCanvas label
		apply: [:label |
			label addClass bootstrap3 button + label addClass bootstrap3 buttonDefault +
				(self activeLabelCommandFor: anElement) + labelCommand];
		with: [self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas]
]
