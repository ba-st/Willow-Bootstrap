"
The tooltip plugin let's  you show or  hide tooltips, via data attributes or JavaScript
"
Class {
	#name : #BootstrapTooltip,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #Options }
BootstrapTooltip >> animation: aBoolean [

	"Apply a CSS fade transition to the tooltip"

	self optionAt: #animation put: aBoolean
]

{ #category : #Options }
BootstrapTooltip >> container: aStringOrFalse [

	"Appends the tooltip to a specific element. 
	Example: container: 'body'. 
	This option is particularly useful in that it allows you to position the tooltip in the flow of the document near the triggering element
	- which will prevent the tooltip from floating away from the triggering element during a window resize."

	self optionAt: #container put: aStringOrFalse
]

{ #category : #Options }
BootstrapTooltip >> delay: aNumberOrObject [

	"Delay showing and hiding the tooltip (ms) - does not apply to manual trigger type
	If a number is supplied, delay is applied to both hide/show
	Use an instance of BootstrapDelayConfiguration to specify a different delay for hide or show"

	self optionAt: #delay put: aNumberOrObject
]

{ #category : #Methods }
BootstrapTooltip >> hide [

	"Hides an element's tooltip. Returns to the caller before the tooltip has actually been hidden (i.e. before the hidden.bs.tooltip event occurs). 
	This is considered a manual triggering of the tooltip."

	functionName := self lookupValue: #hide
]

{ #category : #Options }
BootstrapTooltip >> html: aBoolean [

	"Insert HTML into the tooltip. If false, jQuery's text method will be used to insert content into the DOM. Use text if you're worried about XSS attacks."

	self optionAt: #html put: aBoolean
]

{ #category : #Options }
BootstrapTooltip >> htmlTitle: aRenderable [

	self
		html: true;
		title: (self render: aRenderable)
]

{ #category : #private }
BootstrapTooltip >> method [

	^ 'tooltip'
]

{ #category : #Options }
BootstrapTooltip >> placement: aStringOrFunction [

	"How to position the tooltip - top | bottom | left | right | auto.
	When auto is specified, it will dynamically reorient the tooltip. 
	For example, if placement is auto left, the tooltip will display to the left when possible, otherwise it will display right.

	When a function is used to determine the placement, it is called with the tooltip DOM node as its first argument and the triggering element DOM node as its second. 
	The this context is set to the tooltip instance."

	self optionAt: #placement put: (self lookupCssValue: aStringOrFunction)
]

{ #category : #Options }
BootstrapTooltip >> sanitize: aBoolean [

	"Enable or disable the sanitization. If activated 'template', 'content' and 'title' options will be sanitized."

	self optionAt: #sanitize put: aBoolean
]

{ #category : #Options }
BootstrapTooltip >> sanitizeFunction: aJSFunction [

	"Here you can supply your own sanitize function. This can be useful if you prefer to use a dedicated library to perform sanitization."

	self optionAt: #sanitizeFn put: aJSFunction
]

{ #category : #Options }
BootstrapTooltip >> selector: aString [

	"If a selector is provided, tooltip objects will be delegated to the specified targets. 
	In practice, this is used to enable dynamic HTML content to have tooltips added. "

	self optionAt: #selector put: aString
]

{ #category : #Methods }
BootstrapTooltip >> show [

	"Reveals an element's tooltip. Returns to the caller before the tooltip has actually been shown (i.e. before the shown.bs.tooltip event occurs). 
	This is considered a manual triggering of the tooltip. Tooltips with zero-length titles are never displayed."

	functionName := self lookupValue: #show
]

{ #category : #Options }
BootstrapTooltip >> template: aRenderable [

	"Base HTML to use when creating the tooltip.

	The tooltip's title will be injected into the .tooltip-inner.
	.tooltip-arrow will become the tooltip's arrow.
	The outermost wrapper element should have the .tooltip class."

	self optionAt: #template put: (self render: aRenderable)
]

{ #category : #Options }
BootstrapTooltip >> title: aStringOrFunction [

	"Default title value if title attribute isn't present.
	If a function is given, it will be called with its this reference set to the element that the tooltip is attached to."

	self optionAt: #title put: aStringOrFunction
]

{ #category : #Methods }
BootstrapTooltip >> toggle [

	"Toggles an element's tooltip. Returns to the caller before the tooltip has actually been shown or hidden. 
	This is considered a manual triggering of the tooltip."

	functionName := self lookupValue: #toggle
]

{ #category : #Options }
BootstrapTooltip >> trigger: aString [

	"How tooltip is triggered - click | hover | focus | manual. 
	You may pass multiple triggers; separate them with a space. manual cannot be combined with any other trigger."

	self optionAt: #trigger put: aString
]

{ #category : #Options }
BootstrapTooltip >> whiteList: anAssociationArray [

	"Object which contains allowed attributes and tags"

	| object |

	object := GRSmallDictionary new.
	anAssociationArray do: [ :association | object at: association key put: association value asArray ].
	self optionAt: #whiteList put: object
]
