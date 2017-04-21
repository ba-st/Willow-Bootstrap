Options
beforeShowDay: aJSFunction

	"Function(Date). Default: $.noop

A function that takes a date as a parameter and returns one of the following values:

        undefined to have no effect
        A Boolean, indicating whether or not this date is selectable
        A String representing additional CSS classes to apply to the date’s cell
        An object with the following properties:
            enabled: same as the Boolean value above
            classes: same as the String value above
            tooltip: a tooltip to apply to this date, via the title HTML attribute"

	self optionAt: 'beforeShowDay' put: aJSFunction