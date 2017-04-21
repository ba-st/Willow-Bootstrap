Options
startView: aStringOrNumber

	"Number, String. Default: 0, “month”

The view that the datepicker should show when it is opened. Accepts values of 0 or “month” for month view (the default), 1 or “year” for the 12-month overview, 2 or “decade” for the 10-year overview, 3 or “century” for the 10-decade overview, and 4 or “millennium” for the 10-century overview. Useful for date-of-birth datepickers."

	self optionAt: 'startView' put: aStringOrNumber