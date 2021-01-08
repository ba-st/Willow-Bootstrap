Extension { #name : #BootstrapPopover }

{ #category : #'*Willow-Bootstrap-3' }
BootstrapPopover >> destroy [

	"Hides and destroys an element's popover. 
	Tooltips that use delegation (which are created using the selector option) cannot be individually destroyed on descendant trigger elements."

	functionName := 'destroy'
]

{ #category : #'*Willow-Bootstrap-3' }
BootstrapPopover >> viewport: aStringViewportConfigurationOrFunction [

	"Keeps the popover within the bounds of this element. 
	Example: viewport: '#viewport' or { 'selector': '#viewport', 'padding': 0 }
	If a function is given, it is called with the triggering element DOM node as its only argument. The this context is set to the popover instance."

	self optionAt: #viewport put: aStringViewportConfigurationOrFunction
]
