Options
placement: aStringOrFunction

	"How to position the popover - top | bottom | left | right | auto.
	When auto is specified, it will dynamically reorient the popover. 
	For example, if placement is auto left, the popover will display to the left when possible, otherwise it will display right.

	When a function is used to determine the placement, it is called with the popover DOM node as its first argument and the triggering element DOM node as its second. 
	The this context is set to the popover instance."

	self optionAt: BootstrapConstants placement put: aStringOrFunction