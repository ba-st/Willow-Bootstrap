tests-Options
testDaysOfWeekDisabled

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekDisabled: BootstrapDatepickerConstants sunday ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekDisabled":0});</script>'.

	html := self
		renderTextFieldApplying: [ :datepicker | 
			datepicker
				daysOfWeekDisabled:
					{BootstrapDatepickerConstants saturday.
					BootstrapDatepickerConstants sunday} ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekDisabled":[6,0]});</script>'