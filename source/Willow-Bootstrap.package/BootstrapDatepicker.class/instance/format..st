Options
format: aStringOrJSObject

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