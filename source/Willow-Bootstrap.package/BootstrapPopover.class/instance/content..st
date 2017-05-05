Options
content: aStringOrFunction

	"Default content value if data-content attribute isn't present.
	If a function is given, it will be called with its this reference set to the element that the popover is attached to."

	self optionAt: BootstrapConstants content put: aStringOrFunction