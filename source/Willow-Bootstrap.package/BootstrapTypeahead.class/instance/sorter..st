Options
sorter: aJSFunction

	"Method used to sort autocomplete results. Accepts a single argument items and has the scope of the typeahead instance. Reference the current query with this.query."

	self optionAt: 'sorter' put: aJSFunction