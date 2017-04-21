tests-Methods
testSetDaysOfWeekHighlighted

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDaysOfWeekHighlighted: #() ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDaysOfWeekHighlighted",[]);</script>'