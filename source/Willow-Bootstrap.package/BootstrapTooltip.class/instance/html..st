Options
html: aBoolean

	"Insert HTML into the tooltip. If false, jQuery's text method will be used to insert content into the DOM. Use text if you're worried about XSS attacks."

	self optionAt: BootstrapConstants html put: aBoolean