Options
maxOptions: integerOrFalse

	"When set to an integer and in a multi-select, the number of selected options cannot exceed the given value.
	This option can also exist as a data-attribute for an <optgroup>, in which case it only applies to that <optgroup>."

	self optionAt: 'maxOptions' put: integerOrFalse 