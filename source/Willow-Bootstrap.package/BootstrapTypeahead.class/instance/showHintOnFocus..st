Options
showHintOnFocus: aBooleanOrAll

	"If hints should be shown as soon as the input gets focus. If set to true, all match will be shown. If set to all, it will display all hints, not filtering them by the current text. 
	This can be used when you want an input that behaves a bit like a combo box plus auto completion as you type to filter the choices."

	self optionAt: 'showHintOnFocus' put: aBooleanOrAll