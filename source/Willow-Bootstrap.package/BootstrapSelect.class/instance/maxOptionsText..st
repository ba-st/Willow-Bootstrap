Options
maxOptionsText: stringOrArrayOrFunction

	"The text that is displayed when maxOptions is enabled and the maximum number of options for the given scenario have been selected.

	If a function is used, it must return an array. 
		array[0] is the text used when maxOptions is applied to the entire select element. 
		array[1] is the text used when maxOptions is used on an optgroup. 
	
	If a string is used, the same text is used for both the element and the optgroup."

	self optionAt: 'maxOptionsText' put: stringOrArrayOrFunction 