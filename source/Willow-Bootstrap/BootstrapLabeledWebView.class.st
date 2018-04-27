"
I'm useful for wrapping labels and controls  for optimum spacing.
"
Class {
	#name : #BootstrapLabeledWebView,
	#superclass : #WAPainter,
	#instVars : [
		'formGroupContainer'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapLabeledWebView class >> applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ self new
		initializeApplying: [ :container | container addClass bootstrap formGroup + aCommandToContainer ] asWebComponentCommand
		displaying: thePhrasingContent
		applying: [ :label | label addClass bootstrap controlLabel + aCommandToLabel ] asWebComponentCommand
		boundTo: aFieldWebView
		applying: aCommandToField asWebComponentCommand
]

{ #category : #'Instance Creation' }
BootstrapLabeledWebView class >> displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ self
		applying: [ :container |  ]
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField
]

{ #category : #initialization }
BootstrapLabeledWebView >> initializeApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	| fieldToRender |

	fieldToRender := aCommandToField isNullCommand
		ifTrue: [ aFieldWebView ]
		ifFalse: [ GenericContainerWebView wrapping: aFieldWebView applying: aCommandToField  ].
		
	formGroupContainer := GenericContainerWebView
		wrapping: [ :canvas | 
			| fieldIdentifier |

			fieldIdentifier := aFieldWebView identifyIn: canvas.
			self
				renderLabelFor: fieldIdentifier
				displaying: thePhrasingContent
				on: canvas
				applying: aCommandToLabel.

			canvas render: fieldToRender ]
		applying: aCommandToContainer
]

{ #category : #rendering }
BootstrapLabeledWebView >> renderContentOn: aCanvas [

	aCanvas render: formGroupContainer
]

{ #category : #'private - Rendering' }
BootstrapLabeledWebView >> renderLabelFor: fieldIdentifier displaying: thePhrasingContent on: canvas applying: aCommandToLabel [

	| label |

	label := canvas label for: fieldIdentifier.
	aCommandToLabel applyTo: label on: canvas.
	label with: thePhrasingContent
]
