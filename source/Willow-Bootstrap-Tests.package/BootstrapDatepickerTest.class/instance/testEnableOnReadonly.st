tests-Options
testEnableOnReadonly

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker enableOnReadonly: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"enableOnReadonly":true});</script>'