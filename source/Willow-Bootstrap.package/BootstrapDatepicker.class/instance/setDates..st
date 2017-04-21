Methods
setDates: aDateCollection

	"Sets the internal date list; accepts multiple dates or a single array of dates as arguments. Each date is assumed to be a “local” date object, and will be converted to UTC for internal use. For use with multidate pickers"

	functionName := 'setDates'.
	arguments := Array with: aDateCollection asArray