Options
container: aStringOrFalse

	"Appends the popover to a specific element. 
	Example: container: 'body'. 
	This option is particularly useful in that it allows you to position the popover in the flow of the document near the triggering element
	- which will prevent the popover from floating away from the triggering element during a window resize."

	self optionAt: BootstrapConstants container put: aStringOrFalse