"
I'm useful for wrapping labels and controls for optimum spacing. 

I'm not intended to be used directly, but with the mediation of the component supplier, because
the markup depends on the bootstrap version.
"
Class {
	#name : #BootstrapLabeledFieldWebView,
	#superclass : #WAPainter,
	#instVars : [
		'formGroupContainer'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapLabeledFieldWebView class >> applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ self new
		initializeApplying:
			[ :container | container addClass bootstrapCommon formGroup + aCommandToContainer ]
				asWebComponentCommand
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField asWebComponentCommand
]

{ #category : #'Instance Creation' }
BootstrapLabeledFieldWebView class >> displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ self
		applying: [ :container |  ]
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField
]

{ #category : #initialization }
BootstrapLabeledFieldWebView >> initializeApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	| fieldToRender |

	fieldToRender := [ GenericContainerWebView wrapping: aFieldWebView applying: aCommandToField ]
		unless: aCommandToField isNullCommand
		inWhichCase: [ aFieldWebView ].

	formGroupContainer := GenericContainerWebView
		wrapping: [ :canvas | 
			| fieldIdentifier |

			fieldIdentifier := aFieldWebView identifyIn: canvas.
			self
				renderLabelFor: fieldIdentifier
				displaying: thePhrasingContent
				on: canvas
				applying: aCommandToLabel.

			canvas render: fieldToRender
			]
		applying: aCommandToContainer
]

{ #category : #rendering }
BootstrapLabeledFieldWebView >> renderContentOn: aCanvas [

	aCanvas render: formGroupContainer
]

{ #category : #'private - Rendering' }
BootstrapLabeledFieldWebView >> renderLabelFor: fieldIdentifier displaying: thePhrasingContent on: canvas applying: aCommandToLabel [

	canvas label
		for: fieldIdentifier;
		with: thePhrasingContent applying: aCommandToLabel
]
