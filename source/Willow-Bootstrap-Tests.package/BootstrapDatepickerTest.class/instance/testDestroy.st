tests-Methods
testDestroy

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker destroy ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("destroy");</script>'