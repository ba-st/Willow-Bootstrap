Options
daysOfWeekDisabled: aStringOrArray

	"Days of the week that should be disabled. Values are 0 (Sunday) to 6 (Saturday). Multiple values should be comma-separated. Example: disable weekends: '06' or '0,6' or [0,6]."

	self optionAt: 'daysOfWeekDisabled' put: aStringOrArray 