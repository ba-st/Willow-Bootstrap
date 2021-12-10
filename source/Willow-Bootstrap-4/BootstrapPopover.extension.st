Extension { #name : #BootstrapPopover }

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> boundary: aString [

	"Overflow constraint boundary of the popover. Accepts the values of 'viewport', 'window', 'scrollParent', or an HTMLElement reference (JavaScript only). 
	For more information refer to Popper.js's preventOverflow docs."

	self optionAt: #boundary put: aString
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> disable [

	"Removes the ability for an element’s popover to be shown. The popover will only be able to be shown if it is re-enabled."

	functionName := 'disable'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> dispose [

	"Hides and destroys an element’s popover. 
	Popovers that use delegation (which are created using the selector option) cannot be individually destroyed on descendant trigger elements."

	functionName := 'dispose'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> enable [

	"Gives an element’s popover the ability to be shown. Popovers are enabled by default."

	functionName := 'enable'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> fallbackPlacement: aStringOrArray [

	"Allow to specify which position Popper will use on fallback. For more information refer to Popper.js's behavior docs"

	self optionAt: #fallbackPlacement put: (self lookupValue: aStringOrArray)
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> offset: aNumberOrString [

	"Offset of the popover relative to its target. For more information refer to Popper.js's offset docs."

	self optionAt: #offset put: aNumberOrString
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> toggleEnabled [

	"Toggles the ability for an element’s popover to be shown or hidden."

	functionName := 'toggleEnabled'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapPopover >> update [

	"Updates the position of an element’s popover."

	functionName := 'update'
]
