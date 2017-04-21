Methods
setUTCDates: aDateCollection

	"Sets the internal date list. Each date is assumed to be a UTC date object, and will not be converted. For use with multidate pickers."

	functionName := 'setUTCDates'.
	arguments := Array with: aDateCollection asArray