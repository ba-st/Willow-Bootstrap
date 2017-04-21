tests-Methods
testGetDate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getDate");</script>'