tests-Options
testFitToElement

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead fitToElement: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"fitToElement":true});</script>'