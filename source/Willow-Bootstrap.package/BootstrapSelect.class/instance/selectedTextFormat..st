Options
selectedTextFormat: string

	"Specifies how the selection is displayed with a multiple select.

		'values' displays a list of the selected options (separated by multipleSeparator. 
		'static' simply displays the select element's title. 
		'count' displays the total number of selected options. 
		'count > x' behaves like 'values' until the number of selected options is greater than x; after that, it behaves like 'count'. "

	self optionAt: 'selectedTextFormat' put: string 