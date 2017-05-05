Options
viewport: aStringViewportConfigurationOrFunction

	"Keeps the tooltip within the bounds of this element. 
	Example: viewport: '#viewport' or { 'selector': '#viewport', 'padding': 0 }
	If a function is given, it is called with the triggering element DOM node as its only argument. The this context is set to the tooltip instance."

	self optionAt: BootstrapConstants viewport put: aStringViewportConfigurationOrFunction