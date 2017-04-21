Options
forceParse: aBoolean

	"Whether or not to force parsing of the input value when the picker is closed. That is, when an invalid date is left in the input field by the user, the picker will forcibly parse that value, and set the input’s value to the new, valid date, conforming to the given format."

	self optionAt: 'forceParse' put: aBoolean