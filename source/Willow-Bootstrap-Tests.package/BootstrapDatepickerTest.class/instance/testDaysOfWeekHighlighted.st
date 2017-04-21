tests-Options
testDaysOfWeekHighlighted

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekHighlighted: BootstrapDatepickerConstants sunday ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekHighlighted":0});</script>'.

	html := self
		renderTextFieldApplying: [ :datepicker | 
			datepicker
				daysOfWeekHighlighted:
					{BootstrapDatepickerConstants saturday.
					BootstrapDatepickerConstants sunday} ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekHighlighted":[6,0]});</script>'