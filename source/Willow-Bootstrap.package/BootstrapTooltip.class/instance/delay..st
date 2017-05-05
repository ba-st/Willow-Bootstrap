Options
delay: aNumberOrObject

	"Delay showing and hiding the tooltip (ms) - does not apply to manual trigger type
	If a number is supplied, delay is applied to both hide/show
	Use an instance of BootstrapDelayConfiguration to specify a different delay for hide or show"

	self optionAt: BootstrapConstants delay put: aNumberOrObject