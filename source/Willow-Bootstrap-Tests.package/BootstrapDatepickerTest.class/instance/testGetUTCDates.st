tests-Methods
testGetUTCDates

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getUTCDates ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getUTCDates");</script>'