private
searchWith: aSearchAction labels: aLabelsBlock on: aCanvas

	| searchTermHolder |

	searchTermHolder := WAValueHolder new.
	
	^ (aCanvas jQuery getJson
		text: [ :stream | stream json: (self evaluate: aSearchAction with: searchTermHolder contents using: aLabelsBlock) ];
		callback: [ :searchTerm | searchTermHolder contents: searchTerm ] value: (aCanvas jQuery alias: self searchTermVariable);
		onSuccess: ((aCanvas javascript call: self responseFunctionName with: (aCanvas jQuery alias: 'data')) asFunction: #('data' 'status'));
		dataType: 'jsonp')
		asFunction: {self searchTermVariable. self responseFunctionName}