Options
highlighter: aJSFunction

	"Method used to highlight autocomplete results. Accepts a single argument item and has the scope of the typeahead instance. Should return html."

	self optionAt: 'highlighter' put: aJSFunction