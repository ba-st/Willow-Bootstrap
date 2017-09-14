Options
source: arrayOrFunction

	"The data source to query against. May be an array of strings, an array of JSON object with a name property or a function. 
	The function accepts two arguments, the query value in the input field and the process callback. 
	The function may be used synchronously by returning the data source directly or asynchronously via the process callback's single argument."

	self optionAt: 'source' put: arrayOrFunction 