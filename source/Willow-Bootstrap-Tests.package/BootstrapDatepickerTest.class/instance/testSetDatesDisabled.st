tests-Methods
testSetDatesDisabled

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDatesDisabled: #() ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDatesDisabled",[]);</script>'.