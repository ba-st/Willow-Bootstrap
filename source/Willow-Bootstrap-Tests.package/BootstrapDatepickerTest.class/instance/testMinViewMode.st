tests-Options
testMinViewMode

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker minViewMode: BootstrapDatepickerConstants months ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"minViewMode":"months"});</script>'