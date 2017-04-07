Events
onHide: aFunction

	"This event is fired immediately when the hide instance method has been called."

	self call: 'on' with: BootstrapConstants hideModal with: aFunction