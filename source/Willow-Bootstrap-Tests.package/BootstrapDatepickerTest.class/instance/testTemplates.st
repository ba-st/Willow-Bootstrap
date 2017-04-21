tests-Options
testTemplates

	| html |

	html := self
		renderUsing: [ :canvas | 
			| select datepicker |

			select := canvas textInput.
			datepicker := canvas jQuery new bootstrapDatepicker.
			datepicker
				templates:
					(canvas jQuery new bootstrapDatepickerTemplate
						leftArrow: (BootstrapIconWebView representing: Glyphicons menuUp)
						rightArrow: (BootstrapIconWebView representing: Glyphicons menuUp)).
			select script: datepicker ].

	self
		assert: html
		equals:
			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"templates":{"leftArrow":"<span class=\"glyphicon glyphicon-menu-up\"></span>","rightArrow":"<span class=\"glyphicon glyphicon-menu-up\"></span>"}});</script>'