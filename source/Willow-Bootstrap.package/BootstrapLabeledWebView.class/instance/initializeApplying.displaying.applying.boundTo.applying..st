initialization
initializeApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

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