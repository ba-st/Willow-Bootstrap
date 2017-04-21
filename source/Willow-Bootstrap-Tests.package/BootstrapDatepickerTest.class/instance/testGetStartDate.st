tests-Methods
testGetStartDate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getStartDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getStartDate");</script>'