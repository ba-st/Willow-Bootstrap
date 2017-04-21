tests-Options
testStartView

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker startView: BootstrapDatepickerConstants millennium ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"startView":"millennium"});</script>'