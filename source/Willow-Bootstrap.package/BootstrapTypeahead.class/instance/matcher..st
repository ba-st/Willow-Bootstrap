Options
matcher: aJSFunction

	"The method used to determine if a query matches an item. Accepts a single argument, the item against which to test the query. Access the current query with this.query. Return a boolean true if query is a match."

	self optionAt: 'matcher' put: aJSFunction