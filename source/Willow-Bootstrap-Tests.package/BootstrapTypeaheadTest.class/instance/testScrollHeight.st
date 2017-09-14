tests-Options
testScrollHeight

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead scrollHeight: 12 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"scrollHeight":12});</script>'