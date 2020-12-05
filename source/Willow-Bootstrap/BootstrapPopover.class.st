"
Add small overlays of content, like those on the iPad, to any element for housing secondary information.

Popovers whose both title and content are zero-length are never displayed.
"
Class {
	#name : #BootstrapPopover,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #Options }
BootstrapPopover >> animation: aBoolean [

	"Apply a CSS fade transition to the popover"

	self optionAt: #animation put: aBoolean
]

{ #category : #Options }
BootstrapPopover >> container: aStringOrFalse [

	"Appends the popover to a specific element. 
	Example: container: 'body'. 
	This option is particularly useful in that it allows you to position the popover in the flow of the document near the triggering element
	- which will prevent the popover from floating away from the triggering element during a window resize."

	self optionAt: #container put: aStringOrFalse
]

{ #category : #Options }
BootstrapPopover >> content: aStringOrFunction [

	"Default content value if data-content attribute isn't present.
	If a function is given, it will be called with its this reference set to the element that the popover is attached to."

	self optionAt: #content put: aStringOrFunction
]

{ #category : #Options }
BootstrapPopover >> delay: aNumberOrObject [

	"Delay showing and hiding the popover (ms) - does not apply to manual trigger type
	If a number is supplied, delay is applied to both hide/show
	Use an instance of BootstrapDelayConfiguration to specify a different delay for hide or show"

	self optionAt: #delay put: aNumberOrObject
]

{ #category : #Methods }
BootstrapPopover >> hide [

	"Hides an element's popover. Returns to the caller before the popover has actually been hidden (i.e. before the hidden.bs.popover event occurs). 
	This is considered a manual triggering of the popover."

	functionName := self lookupValue: #hide
]

{ #category : #Options }
BootstrapPopover >> html: aBoolean [

	"Insert HTML into the popover. If false, jQuery's text method will be used to insert content into the DOM. Use text if you're worried about XSS attacks."

	self optionAt: #html put: aBoolean
]

{ #category : #Options }
BootstrapPopover >> htmlContent: aRenderable [

	self
		html: true;
		content: (self render: aRenderable)
]

{ #category : #Options }
BootstrapPopover >> htmlTitle: aRenderable [

	self
		html: true;
		title: (self render: aRenderable)
]

{ #category : #private }
BootstrapPopover >> method [

	^ self lookupValue: #popover
]

{ #category : #Options }
BootstrapPopover >> placement: aStringOrFunction [

	"How to position the popover - top | bottom | left | right | auto.
	When auto is specified, it will dynamically reorient the popover. 
	For example, if placement is auto left, the popover will display to the left when possible, otherwise it will display right.

	When a function is used to determine the placement, it is called with the popover DOM node as its first argument and the triggering element DOM node as its second. 
	The this context is set to the popover instance."

	self optionAt: #placement put: (self lookupCssValue: aStringOrFunction)
]

{ #category : #Options }
BootstrapPopover >> sanitize: aBoolean [

	"Enable or disable the sanitization. If activated 'template', 'content' and 'title' options will be sanitized."

	self optionAt: #sanitize put: aBoolean
]

{ #category : #Options }
BootstrapPopover >> sanitizeFunction: aJSFunction [

	"Here you can supply your own sanitize function. This can be useful if you prefer to use a dedicated library to perform sanitization."

	self optionAt: #sanitizeFn put: aJSFunction
]

{ #category : #Options }
BootstrapPopover >> selector: aString [

	"If a selector is provided, popover objects will be delegated to the specified targets. 
	In practice, this is used to enable dynamic HTML content to have popovers added. "

	self optionAt: #selector put: aString
]

{ #category : #Methods }
BootstrapPopover >> show [

	"Reveals an element's popover. Returns to the caller before the popover has actually been shown (i.e. before the shown.bs.popover event occurs). 
	This is considered a manual triggering of the popover. popovers with zero-length titles are never displayed."

	functionName := self lookupValue: #show
]

{ #category : #Options }
BootstrapPopover >> template: aRenderable [

	"Base HTML to use when creating the popover.

	The popover's title will be injected into the .popover-title.
	The popover's content will be injected into the .popover-content.
	.arrow will become the popover's arrow.
	The outermost wrapper element should have the .popover class."

	self optionAt: #template put: (self render: aRenderable)
]

{ #category : #Options }
BootstrapPopover >> title: aStringOrFunction [

	"Default title value if title attribute isn't present.
	If a function is given, it will be called with its this reference set to the element that the popover is attached to."

	self optionAt: #title put: aStringOrFunction
]

{ #category : #Methods }
BootstrapPopover >> toggle [

	"Toggles an element's popover. Returns to the caller before the popover has actually been shown or hidden. 
	This is considered a manual triggering of the popover."

	functionName := self lookupValue: #toggle
]

{ #category : #Options }
BootstrapPopover >> trigger: aString [

	"How popover is triggered - click | hover | focus | manual. 
	You may pass multiple triggers; separate them with a space. manual cannot be combined with any other trigger."

	self optionAt: #trigger put: aString
]

{ #category : #Options }
BootstrapPopover >> whiteList: anAssociationArray [

	"Object which contains allowed attributes and tags"

	| object |

	object := GRSmallDictionary new.
	anAssociationArray do: [ :association | object at: association key put: association value asArray ].
	self optionAt: #whiteList put: object
]
