Options
updateViewDate: aBoolean

	"If false viewDate is set according to value on initialization and updated * if a day in last oder next month is selected or * if dates are changed by setDate, setDates, setUTCDate and setUTCDates methods. If multidate option is true the last selected date or the last date in array passed to setDates or setUTCDates is used."

	self optionAt: 'updateViewDate' put: aBoolean