tests-Methods
testUpdate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker update ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update");</script>'