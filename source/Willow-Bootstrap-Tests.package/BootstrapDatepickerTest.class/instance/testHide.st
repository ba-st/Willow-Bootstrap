tests-Methods
testHide

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker hide ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("hide");</script>'