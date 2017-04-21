tests-Options
testInputs

	| html |

	html := self
		renderUsing: [ :canvas | 
			| select datepicker |

			select := canvas textInput.
			datepicker := canvas jQuery new bootstrapDatepicker.
			datepicker inputs: (canvas jQuery class: 'actual_range').
			select script: datepicker ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"inputs":$(".actual_range")});</script>'