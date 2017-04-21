tests-Options
testCustomFormatting

	| html format |

	format := BootstrapDatepickerFormat
		formattingWith: ('return new Date(date).toISOString();' asFunction: #(date format language))
		parsingWith: ('return new Date(d)' asFunction: #(date format language)).

	html := self renderTextFieldApplying: [ :datepicker | datepicker format: format ].

	self
		assert: html
		equals:
			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"format":{"toDisplay":function(date,format,language){return new Date(date).toISOString();},"toValue":function(date,format,language){return new Date(d)}}});</script>'