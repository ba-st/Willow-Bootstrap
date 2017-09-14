tests-Options
testShowHintOnFocus

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead showHintOnFocus: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"showHintOnFocus":true});</script>'