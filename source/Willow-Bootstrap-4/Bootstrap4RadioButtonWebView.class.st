Class {
	#name : #Bootstrap4RadioButtonWebView,
	#superclass : #BootstrapRadioButtonWebView,
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #'instance creation' }
Bootstrap4RadioButtonWebView class >> renderingWith: aItemRenderer
	applyingToContainer: aContainerCommand
	applyingToLabel: aLabelCommand
	applyingToInput: anInputCommand [

	^self new
		initializeRenderingWith: aItemRenderer
		applyingToContainer: aContainerCommand asWebComponentCommand
		applyingToLabel: aLabelCommand asWebComponentCommand
		applyingToInput: anInputCommand asWebComponentCommand
]

{ #category : #rendering }
Bootstrap4RadioButtonWebView >> activeLabelCommandFor: anElement [

	chosenElementOptional withContentDo: [:chosenElement |
		anElement = chosenElement ifTrue: [^[:label | label addClass bootstrap4 active]]].

	^[]
]

{ #category : #rendering }
Bootstrap4RadioButtonWebView >> groupContainerCommand [

	^ [ :div | 
	div addClass bootstrap4 buttonGroup + div addClass bootstrap4 buttonGroupToggle
		+ ( div setAttribute: #'data-toggle' greaseString to: #buttons greaseString )
		+ ( div setAttribute: #role greaseString to: #group greaseString ) + containerCommand
	]
]

{ #category : #'private - rendering' }
Bootstrap4RadioButtonWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	aCanvas label
		apply: [:label |
			label addClass bootstrap4 button + (self activeLabelCommandFor: anElement) +
				labelCommand];
		with: [self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas]
]
