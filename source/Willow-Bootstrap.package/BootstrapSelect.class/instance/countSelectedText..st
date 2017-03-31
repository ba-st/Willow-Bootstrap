Options
countSelectedText: aStringOrFunction

	"Sets the format for the text displayed when selectedTextFormat is count or count > #. 
	{0} is the selected amount. {1} is total available for selection.
	When set to a function, the first parameter is the number of selected options, and the second is the total number of options. The function must return a string."

	self optionAt: 'countSelectedText' put: aStringOrFunction 