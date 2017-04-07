Events
onShow: aFunction

	"This event fires immediately when the show instance method is called. 
	If caused by a click, the clicked element is available as the relatedTarget property of the event."

	self call: 'on' with: BootstrapConstants showModal with: aFunction