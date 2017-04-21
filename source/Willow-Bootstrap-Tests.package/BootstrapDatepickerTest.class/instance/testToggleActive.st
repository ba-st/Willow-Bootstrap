tests-Options
testToggleActive

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker toggleActive: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"toggleActive":true});</script>'