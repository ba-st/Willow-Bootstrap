tests-Options
testTitle

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker title: 'Pick a date!' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"title":"Pick a date!"});</script>'