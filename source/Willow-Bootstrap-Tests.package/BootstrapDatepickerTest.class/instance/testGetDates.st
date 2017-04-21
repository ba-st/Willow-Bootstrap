tests-Methods
testGetDates

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getDates ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getDates");</script>'