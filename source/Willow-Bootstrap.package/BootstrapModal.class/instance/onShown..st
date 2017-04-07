Events
onShown: aFunction

	"This event is fired when the modal has been made visible to the user (will wait for CSS transitions to complete). 
	If caused by a click, the clicked element is available as the relatedTarget property of the event."

	self call: 'on' with: BootstrapConstants shownModal with: aFunction