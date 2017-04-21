tests-Options
testMultidateSeparator

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker multidateSeparator: ';' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"multidateSeparator":";"});</script>'