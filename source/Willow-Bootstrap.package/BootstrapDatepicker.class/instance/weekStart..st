Options
weekStart: anInteger

	"Day of the week start. 0 (Sunday) to 6 (Saturday). Take a look at BootstrapDatepickerConstants."

	AssertionChecker enforce: [ anInteger between: 0 and: 6 ] because: 'The week start configuration must be an integer between 0 and 6' raising: Error.
	self optionAt: 'weekStart' put: anInteger