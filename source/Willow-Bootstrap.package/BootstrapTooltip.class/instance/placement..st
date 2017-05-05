Options
placement: aStringOrFunction

	"How to position the tooltip - top | bottom | left | right | auto.
	When auto is specified, it will dynamically reorient the tooltip. 
	For example, if placement is auto left, the tooltip will display to the left when possible, otherwise it will display right.

	When a function is used to determine the placement, it is called with the tooltip DOM node as its first argument and the triggering element DOM node as its second. 
	The this context is set to the tooltip instance."

	self optionAt: BootstrapConstants placement put: aStringOrFunction