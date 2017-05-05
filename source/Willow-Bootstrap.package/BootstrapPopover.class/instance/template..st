Options
template: aRenderable

	"Base HTML to use when creating the popover.

	The popover's title will be injected into the .popover-title.
	The popover's content will be injected into the .popover-content.
	.arrow will become the popover's arrow.
	The outermost wrapper element should have the .popover class."

	self optionAt: BootstrapConstants template put: (self render: aRenderable)