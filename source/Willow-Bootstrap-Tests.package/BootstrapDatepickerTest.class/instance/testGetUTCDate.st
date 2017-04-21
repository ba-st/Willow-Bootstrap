tests-Methods
testGetUTCDate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getUTCDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getUTCDate");</script>'