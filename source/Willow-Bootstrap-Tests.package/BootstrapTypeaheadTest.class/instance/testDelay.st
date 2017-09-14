tests-Options
testDelay

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead delay: 1 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"delay":1});</script>'