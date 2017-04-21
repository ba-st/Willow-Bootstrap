tests-Methods
testSetDate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDate",new Date(2017,0,1));</script>'.
