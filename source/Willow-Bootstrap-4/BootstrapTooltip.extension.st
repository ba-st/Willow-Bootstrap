Extension { #name : #BootstrapTooltip }

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> boundary: aString [

	"Overflow constraint boundary of the tooltip. Accepts the values of 'viewport', 'window', 'scrollParent', or an HTMLElement reference (JavaScript only). For more information refer to Popper.js's preventOverflow docs."

	self optionAt: #boundary put: aString
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> disable [

	"Removes the ability for an element’s tooltip to be shown. The tooltip will only be able to be shown if it is re-enabled."

	functionName := 'disable'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> dispose [

	"Hides and destroys an element’s tooltip. 
	Tooltips that use delegation (which are created using the selector option) cannot be individually destroyed on descendant trigger elements."

	functionName := 'dispose'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> enable [

	"Gives an element’s tooltip the ability to be shown. Tooltips are enabled by default."

	functionName := 'enable'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> fallbackPlacement: aStringOrArray [

	"Allow to specify which position Popper will use on fallback. For more information refer to Popper.js's behavior docs"

	self optionAt: #fallbackPlacement put: (self lookupValue: aStringOrArray)
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> offset: aNumberOrString [

	"Offset of the tooltip relative to its target.

When a function is used to determine the offset, it is called with an object containing the offset data as its first argument. The function must return an object with the same structure. The triggering element DOM node is passed as the second argument.

For more information refer to Popper.js's offset docs."

	self optionAt: #offset put: aNumberOrString
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> toggleEnabled [

	"Toggles the ability for an element’s tooltip to be shown or hidden."

	functionName := 'toggleEnabled'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapTooltip >> update [

	"Updates the position of an element’s tooltip."

	functionName := 'update'
]
