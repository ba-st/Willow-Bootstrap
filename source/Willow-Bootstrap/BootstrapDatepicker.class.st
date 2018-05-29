"
I'm a JQueryPlugin implementing  the bootstrap-datepicker programmatic API
"
Class {
	#name : #BootstrapDatepicker,
	#superclass : #BootstrapPlugin,
	#instVars : [
		'arguments'
	],
	#category : #'Willow-Bootstrap-Datepicker'
}

{ #category : #private }
BootstrapDatepicker >> arguments [

	^ arguments ifNil: [ super arguments ] ifNotNil: [ :additionalArguments | super arguments , additionalArguments ]
]

{ #category : #Options }
BootstrapDatepicker >> assumeNearbyYear: aBooleanOrInteger [

	"If true, manually-entered dates with two-digit years, such as “5/1/15”, will be parsed as “2015”, not “15”. If the year is less than 10 years in advance, the picker will use the current century, otherwise, it will use the previous one. For example “5/1/15” would parse to May 1st, 2015, but “5/1/97” would be May 1st, 1997.

To configure the number of years in advance that the picker will still use the current century, use an Integer instead of the Boolean true. E.g. “assumeNearbyYear: 20”"

	self optionAt: 'assumeNearbyYear' put: aBooleanOrInteger
]

{ #category : #Options }
BootstrapDatepicker >> autoclose: aBoolean [

	"Whether or not to close the datepicker immediately when a date is selected."

	self optionAt: 'autoclose' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> beforeShowCentury: aJSFunction [

	"Function(Date). Default: $.noop

A function that takes a date as a parameter and returns one of the following values:

        undefined to have no effect
        A Boolean, indicating whether or not this year is selectable
        A String representing additional CSS classes to apply to the year’s cell
        An object with the following properties:
            enabled: same as the Boolean value above
            classes: same as the String value above
            tooltip: a tooltip to apply to this year, via the title HTML attribute"

	self optionAt: 'beforeShowCentury' put: aJSFunction
]

{ #category : #Options }
BootstrapDatepicker >> beforeShowDay: aJSFunction [

	"Function(Date). Default: $.noop

A function that takes a date as a parameter and returns one of the following values:

        undefined to have no effect
        A Boolean, indicating whether or not this date is selectable
        A String representing additional CSS classes to apply to the date’s cell
        An object with the following properties:
            enabled: same as the Boolean value above
            classes: same as the String value above
            tooltip: a tooltip to apply to this date, via the title HTML attribute
				content: the content to display in the day cell, rather than the default (day of month as text)"

	self optionAt: 'beforeShowDay' put: aJSFunction
]

{ #category : #Options }
BootstrapDatepicker >> beforeShowDecade: aJSFunction [

	"Function(Date). Default: $.noop

A function that takes a date as a parameter and returns one of the following values:

        undefined to have no effect
        A Boolean, indicating whether or not this year is selectable
        A String representing additional CSS classes to apply to the year’s cell
        An object with the following properties:
            enabled: same as the Boolean value above
            classes: same as the String value above
            tooltip: a tooltip to apply to this year, via the title HTML attribute"

	self optionAt: 'beforeShowDecade' put: aJSFunction
]

{ #category : #Options }
BootstrapDatepicker >> beforeShowMonth: aJSFunction [

	"Function(Date). Default: $.noop

A function that takes a date as a parameter and returns one of the following values:

        undefined to have no effect
        A Boolean, indicating whether or not this month is selectable
        A String representing additional CSS classes to apply to the month’s cell
        An object with the following properties:
            enabled: same as the Boolean value above
            classes: same as the String value above
            tooltip: a tooltip to apply to this date, via the title HTML attribute"

	self optionAt: 'beforeShowMonth' put: aJSFunction
]

{ #category : #Options }
BootstrapDatepicker >> beforeShowYear: aJSFunction [

	"Function(Date). Default: $.noop

A function that takes a date as a parameter and returns one of the following values:

        undefined to have no effect
        A Boolean, indicating whether or not this year is selectable
        A String representing additional CSS classes to apply to the year’s cell
        An object with the following properties:
            enabled: same as the Boolean value above
            classes: same as the String value above
            tooltip: a tooltip to apply to this year, via the title HTML attribute"

	self optionAt: 'beforeShowYear' put: aJSFunction
]

{ #category : #Options }
BootstrapDatepicker >> calendarWeeks: aBoolean [

	"Whether or not to show week numbers to the left of week rows."

	self optionAt: 'calendarWeeks' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> clearButton: aBoolean [

	"If true, displays a “Clear” button at the bottom of the datepicker to clear the input value. If “autoclose” is also set to true, this button will also close the datepicker."

	self optionAt: 'clearBtn' put: aBoolean
]

{ #category : #Methods }
BootstrapDatepicker >> clearDates [

	functionName := 'clearDates'
]

{ #category : #Options }
BootstrapDatepicker >> container: aString [

	"Appends the date picker popup to a specific element; eg: container: ‘#picker-container’ (will default to “body”)"

	self optionAt: 'container' put: aString 
]

{ #category : #Options }
BootstrapDatepicker >> datesDisabled: aStringOrArray [

	"Array of date strings or a single date string formatted in the given date format"

	self optionAt: 'datesDisabled' put: aStringOrArray 
]

{ #category : #Options }
BootstrapDatepicker >> daysOfWeekDisabled: aStringOrArray [

	"Days of the week that should be disabled. Values are 0 (Sunday) to 6 (Saturday). Multiple values should be comma-separated. Example: disable weekends: '06' or '0,6' or [0,6]."

	self optionAt: 'daysOfWeekDisabled' put: (self lookupValueOrArray: aStringOrArray) 
]

{ #category : #Options }
BootstrapDatepicker >> daysOfWeekHighlighted: aStringOrArray [

	"Days of the week that should be highlighted. Values are 0 (Sunday) to 6 (Saturday). Multiple values should be comma-separated. Example: highlight weekends: '06' or '0,6' or [0,6]."

	self optionAt: 'daysOfWeekHighlighted' put: (self lookupValueOrArray: aStringOrArray)
]

{ #category : #Methods }
BootstrapDatepicker >> destroy [

	functionName := 'destroy'
]

{ #category : #Options }
BootstrapDatepicker >> disableTouchKeyboard: aBoolean [

	"If true, no keyboard will show on mobile devices"

	self optionAt: 'disableTouchKeyboard' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> enableOnReadonly: aBoolean [

	"If false the datepicker will not show on a readonly datepicker field."

	self optionAt: 'enableOnReadonly' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> endDate: aDate [

	"Date. Default: End of time. The latest date that may be selected; all later dates will be disabled."

	self optionAt: 'endDate' put: aDate
]

{ #category : #Options }
BootstrapDatepicker >> forceParse: aBoolean [

	"Whether or not to force parsing of the input value when the picker is closed. That is, when an invalid date is left in the input field by the user, the picker will forcibly parse that value, and set the input’s value to the new, valid date, conforming to the given format."

	self optionAt: 'forceParse' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> format: aStringOrJSObject [

	"String. Default: “mm/dd/yyyy”

The date format, combination of d, dd, D, DD, m, mm, M, MM, yy, yyyy.

    d, dd: Numeric date, no leading zero and leading zero, respectively. Eg, 5, 05.
    D, DD: Abbreviated and full weekday names, respectively. Eg, Mon, Monday.
    m, mm: Numeric month, no leading zero and leading zero, respectively. Eg, 7, 07.
    M, MM: Abbreviated and full month names, respectively. Eg, Jan, January
    yy, yyyy: 2- and 4-digit years, respectively. Eg, 12, 2012.

Object.

Custom formatting options

    toDisplay: function (date, format, language) to convert date object to string, that will be stored in input field
    toValue: function (date, format, language) to convert string object to date, that will be used in date selection

$('.datepicker').datepicker({
    format: {
        /*
         * Say our UI should display a week ahead,
         * but textbox should store the actual date.
         * This is useful if we need UI to select local dates,
         * but store in UTC
         */
        toDisplay: function (date, format, language) {
            var d = new Date(date);
            d.setDate(d.getDate() - 7);
            return d.toISOString();
        },
        toValue: function (date, format, language) {
            var d = new Date(date);
            d.setDate(d.getDate() + 7);
            return new Date(d);
        }
    },
    autoclose: true
});

"

	self optionAt: 'format' put: aStringOrJSObject
]

{ #category : #Methods }
BootstrapDatepicker >> getDate [

	"Returns a localized date object representing the internal date object of the first datepicker in the selection. For multidate pickers, returns the latest date selected."

	functionName := 'getDate'
]

{ #category : #Methods }
BootstrapDatepicker >> getDates [

	"Returns a list of localized date objects representing the internal date objects of the first datepicker in the selection. For use with multidate pickers."

	functionName := 'getDates'
]

{ #category : #Methods }
BootstrapDatepicker >> getEndDate [

	"Returns the upper date limit on the datepicker."

	functionName := 'getEndDate'
]

{ #category : #Methods }
BootstrapDatepicker >> getStartDate [

	"Returns the lower date limit on the datepicker."

	functionName := 'getStartDate'
]

{ #category : #Methods }
BootstrapDatepicker >> getUTCDate [

	"Returns the internal UTC date object, as-is and unconverted to local time, of the first datepicker in the selection. For multidate pickers, returns the latest date selected."

	functionName := 'getUTCDate'
]

{ #category : #Methods }
BootstrapDatepicker >> getUTCDates [

	"Returns the internal list of UTC date objects, as they are and unconverted to local time, of the first datepicker in the selection. For use with multidate pickers."

	functionName := 'getUTCDates'
]

{ #category : #Methods }
BootstrapDatepicker >> hide [

	functionName := 'hide'
]

{ #category : #Options }
BootstrapDatepicker >> immediateUpdates: aBoolean [

	"If true, selecting a year or month in the datepicker will update the input value immediately. Otherwise, only selecting a day of the month will update the input value immediately."

	self optionAt: 'immediateUpdates' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> inputs: anArrayOrJQuery [

	"Array, jQuery. Default: None. A list of inputs to be used in a range picker, which will be attached to the selected element. Allows for explicitly creating a range picker on a non-standard element."

	self optionAt: 'inputs' put: anArrayOrJQuery
]

{ #category : #Options }
BootstrapDatepicker >> keepEmptyValues: aBoolean [

	"Only effective in a range picker. If true, the selected value does not get propagated to other, currently empty, pickers in the range."

	self optionAt: 'keepEmptyValues' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> keyboardNavigation: aBoolean [

	"Whether or not to allow date navigation by arrow keys."

	self optionAt: 'keyboardNavigation' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> language: aString [

	"String. Default: “en”

The IETF code (eg “en” for English, “pt-BR” for Brazilian Portuguese) of the language to use for month and day names. These will also be used as the input’s value (and subsequently sent to the server in the case of form submissions). If a full code (eg “de-DE”) is supplied the picker will first check for an “de-DE” language and if not found will fallback and check for a “de” language. If an unknown language code is given, English will be used. "

	self optionAt: 'language' put: aString
]

{ #category : #private }
BootstrapDatepicker >> lookupValueOrArray: aStringOrArray [

	^ (aStringOrArray isCollection and: [ aStringOrArray isString not ])
		ifTrue: [ aStringOrArray collect: [ :value | self lookupValue: value ] ]
		ifFalse: [ aStringOrArray ]
]

{ #category : #Options }
BootstrapDatepicker >> maxViewMode: aStringOrNumber [

	"Number, String. Default: 4, “centuries”

Set a maximum limit for the view mode. Accepts: “days” or 0, “months” or 1, “years” or 2, “decades” or 3, and “centuries” or 4. Gives the ability to pick only a day, a month, a year or a decade. The day is set to the 1st for “months”, the month is set to January for “years”, the year is set to the first year from the decade for “decades”, and the year is set to the first from the millennium for “centuries”."

	self optionAt: 'maxViewMode' put: aStringOrNumber
]

{ #category : #private }
BootstrapDatepicker >> method [

	^ self constants >> #bootstrap >> #datepicker
]

{ #category : #Options }
BootstrapDatepicker >> minViewMode: aStringOrNumber [

	"Number, String. Default: 0, “days”

Set a minimum limit for the view mode. Accepts: “days” or 0, “months” or 1, “years” or 2, “decades” or 3, and “centuries” or 4. Gives the ability to pick only a month, a year or a decade. The day is set to the 1st for “months”, and the month is set to January for “years”, the year is set to the first year from the decade for “decades”, and the year is set to the first from the millennium for “centuries”."

	self optionAt: 'minViewMode' put: aStringOrNumber
]

{ #category : #Options }
BootstrapDatepicker >> multidate: aBooleanOrNumber [

	"Boolean, Number. Default: false

Enable multidate picking. Each date in month view acts as a toggle button, keeping track of which dates the user has selected in order. If a number is given, the picker will limit how many dates can be selected to that number, dropping the oldest dates from the list when the number is exceeded. true equates to no limit. The input’s value (if present) is set to a string generated by joining the dates, formatted, with multidateSeparator."

	self optionAt: 'multidate' put: aBooleanOrNumber
]

{ #category : #Options }
BootstrapDatepicker >> multidateSeparator: aString [

	"String. Default: ”,”

The string that will appear between dates when generating the input’s value. When parsing the input’s value for a multidate picker, this will also be used to split the incoming string to separate multiple formatted dates; as such, it is highly recommended that you not use a string that could be a substring of a formatted date (eg, using ‘-‘ to separate dates when your format is ‘yyyy-mm-dd’)."

	self optionAt: 'multidateSeparator' put: aString
]

{ #category : #Events }
BootstrapDatepicker >> onCenturyChanged: aFunction [

	self call: 'on' with: (self lookupValue: #changeCentury) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onDateChanged: aFunction [

	self call: 'on' with: (self lookupValue: #changeDate) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onDateCleared: aFunction [

	self call: 'on' with: (self lookupValue: #clearDate) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onDecadeChanged: aFunction [

	self call: 'on' with: (self lookupValue: #changeDecade) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onHide: aFunction [

	self call: 'on' with: (self lookupValue: #hide) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onMonthChanged: aFunction [

	self call: 'on' with: (self lookupValue: #changeMonth) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onShow: aFunction [

	self call: 'on' with: (self lookupValue: #show) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onViewModeChanged: aFunction [

	self call: 'on' with: (self lookupValue: #changeViewMode) with: aFunction
]

{ #category : #Events }
BootstrapDatepicker >> onYearChanged: aFunction [

	self call: 'on' with: (self lookupValue: #changeYear) with: aFunction
]

{ #category : #Options }
BootstrapDatepicker >> orientation: aString [

	"String. Default: “auto”

A space-separated string consisting of one or two of “left” or “right”, “top” or “bottom”, and “auto” (may be omitted); for example, “top left”, “bottom” (horizontal orientation will default to “auto”), “right” (vertical orientation will default to “auto”), “auto top”. Allows for fixed placement of the picker popup.

“orientation” refers to the location of the picker popup’s “anchor”; you can also think of it as the location of the trigger element (input, component, etc) relative to the picker.

“auto” triggers “smart orientation” of the picker. Horizontal orientation will default to “left” and left offset will be tweaked to keep the picker inside the browser viewport; vertical orientation will simply choose “top” or “bottom”, whichever will show more of the picker in the viewport."

	self optionAt: 'orientation' put: (self lookupCssValue: aString)
]

{ #category : #Methods }
BootstrapDatepicker >> setDate: aDate [

	functionName := 'setDate'.
	arguments := Array with: aDate
]

{ #category : #Methods }
BootstrapDatepicker >> setDates: aDateCollection [

	"Sets the internal date list; accepts multiple dates or a single array of dates as arguments. Each date is assumed to be a “local” date object, and will be converted to UTC for internal use. For use with multidate pickers"

	functionName := 'setDates'.
	arguments := Array with: aDateCollection asArray
]

{ #category : #Methods }
BootstrapDatepicker >> setDatesDisabled: aDateCollection [

 	functionName := 'setDatesDisabled'.
	arguments := Array with: aDateCollection asArray
]

{ #category : #Methods }
BootstrapDatepicker >> setDaysOfWeekDisabled: aStringOrArray [

	functionName := 'setDaysOfWeekDisabled'.
	arguments := Array with: aStringOrArray
]

{ #category : #Methods }
BootstrapDatepicker >> setDaysOfWeekHighlighted: aStringOrArray [

	functionName := 'setDaysOfWeekHighlighted'.
	arguments := Array with: aStringOrArray
]

{ #category : #Methods }
BootstrapDatepicker >> setEndDate: aDate [

	functionName := 'setEndDate'.
	arguments := Array with: aDate
]

{ #category : #Methods }
BootstrapDatepicker >> setStartDate: aDate [

	functionName := 'setStartDate'.
	arguments := Array with: aDate
]

{ #category : #Methods }
BootstrapDatepicker >> setUTCDate: aDate [

	functionName := 'setUTCDate'.
	arguments := Array with: aDate
]

{ #category : #Methods }
BootstrapDatepicker >> setUTCDates: aDateCollection [

	"Sets the internal date list. Each date is assumed to be a UTC date object, and will not be converted. For use with multidate pickers."

	functionName := 'setUTCDates'.
	arguments := Array with: aDateCollection asArray
]

{ #category : #Methods }
BootstrapDatepicker >> show [

	functionName := 'show'
]

{ #category : #Options }
BootstrapDatepicker >> showOnFocus: aBoolean [

	"If false, the datepicker will be prevented from showing when the input field associated with it receives focus."

	self optionAt: 'showOnFocus' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> showWeekDays: aBoolean [

	"If false, the datepicker will not append the names of the weekdays to its view. Default behavior is appending the weekdays."

	self optionAt: 'showWeekDays' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> startDate: aDate [

	"Date. Default: Beginning of time. The earliest date that may be selected; all earlier dates will be disabled."

	self optionAt: 'startDate' put: aDate
]

{ #category : #Options }
BootstrapDatepicker >> startView: aStringOrNumber [

	"Number, String. Default: 0, “month”

The view that the datepicker should show when it is opened. Accepts values of 0 or “month” for month view (the default), 1 or “year” for the 12-month overview, 2 or “decade” for the 10-year overview, 3 or “century” for the 10-decade overview, and 4 or “millennium” for the 10-century overview. Useful for date-of-birth datepickers."

	self optionAt: 'startView' put: aStringOrNumber
]

{ #category : #Options }
BootstrapDatepicker >> templates: aBootstrapDatepickerTemplate [

	"The templates used to generate some parts of the picker. Each property must be a string with only text, or valid html. You can use this property to use custom icons libs. for example:"

	self optionAt: 'templates' put: aBootstrapDatepickerTemplate
]

{ #category : #Options }
BootstrapDatepicker >> title: aString [

	"The string that will appear on top of the datepicker. If empty the title will be hidden."

	self optionAt: 'title' put: aString 
]

{ #category : #Options }
BootstrapDatepicker >> todayButton: aBooleanOrLinked [

	"Boolean, “linked”. Default: false. If true or “linked”, displays a “Today” button at the bottom of the datepicker to select the current date. If true, the “Today” button will only move the current date into view; if “linked”, the current date will also be selected."

	self optionAt: 'todayBtn' put: aBooleanOrLinked 
]

{ #category : #Options }
BootstrapDatepicker >> todayHighlight: aBoolean [

	"If true, highlights the current date."

	self optionAt: 'todayHighlight' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> toggleActive: aBoolean [

	"If true, selecting the currently active date in the datepicker will unset the respective date. This option is always true when the multidate option is being used."

	self optionAt: 'toggleActive' put: aBoolean
]

{ #category : #Methods }
BootstrapDatepicker >> update [

	functionName := 'update'
]

{ #category : #Methods }
BootstrapDatepicker >> update: aDateOrString [

	functionName := 'update'.
	arguments := Array with: aDateOrString 
]

{ #category : #Options }
BootstrapDatepicker >> updateViewDate: aBoolean [

	"If false viewDate is set according to value on initialization and updated * if a day in last oder next month is selected or * if dates are changed by setDate, setDates, setUTCDate and setUTCDates methods. If multidate option is true the last selected date or the last date in array passed to setDates or setUTCDates is used."

	self optionAt: 'updateViewDate' put: aBoolean
]

{ #category : #Options }
BootstrapDatepicker >> weekStart: anInteger [

	"Day of the week start. 0 (Sunday) to 6 (Saturday). Take a look at BootstrapDatepickerConstants."

	AssertionChecker
		enforce: [ (self lookupValue: anInteger) between: 0 and: 6 ]
		because: 'The week start configuration must be an integer between 0 and 6'
		raising: Error.
	self optionAt: 'weekStart' put: anInteger
]

{ #category : #Options }
BootstrapDatepicker >> zIndexOffset: anInteger [

	"The CSS z-index of the open datepicker is the maximum z-index of the input and all of its DOM ancestors plus the zIndexOffset."
 
	self optionAt: 'zIndexOffset' put: anInteger
]
