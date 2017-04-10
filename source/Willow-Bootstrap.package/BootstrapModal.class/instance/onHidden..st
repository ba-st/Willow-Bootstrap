Events
onHidden: aFunction

	"This event is fired when the modal has finished being hidden from the user (will wait for CSS transitions to complete)."

	self call: 'on' with: BootstrapConstants hiddenModal with: aFunction