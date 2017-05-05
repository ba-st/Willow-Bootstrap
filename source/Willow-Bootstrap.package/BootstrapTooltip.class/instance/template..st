Options
template: aRenderable

	"Base HTML to use when creating the tooltip.

	The tooltip's title will be injected into the .tooltip-inner.
	.tooltip-arrow will become the tooltip's arrow.
	The outermost wrapper element should have the .tooltip class."

	self optionAt: BootstrapConstants template put: (self render: aRenderable)