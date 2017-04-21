Options
maxViewMode: aStringOrNumber

	"Number, String. Default: 4, “centuries”

Set a maximum limit for the view mode. Accepts: “days” or 0, “months” or 1, “years” or 2, “decades” or 3, and “centuries” or 4. Gives the ability to pick only a day, a month, a year or a decade. The day is set to the 1st for “months”, the month is set to January for “years”, the year is set to the first year from the decade for “decades”, and the year is set to the first from the millennium for “centuries”."

	self optionAt: 'maxViewMode' put: aStringOrNumber