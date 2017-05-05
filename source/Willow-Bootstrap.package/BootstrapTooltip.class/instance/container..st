Options
container: aStringOrFalse

	"Appends the tooltip to a specific element. 
	Example: container: 'body'. 
	This option is particularly useful in that it allows you to position the tooltip in the flow of the document near the triggering element
	- which will prevent the tooltip from floating away from the triggering element during a window resize."

	self optionAt: BootstrapConstants container put: aStringOrFalse