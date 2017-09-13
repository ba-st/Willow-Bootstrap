Options
addItem: aJSONObject

	"Adds an item to the end of the list, for example New Entry. This could be used, for example, to pop a dialog when an item is not found in the list of data."

	self optionAt: 'addItem' put: aJSONObject 