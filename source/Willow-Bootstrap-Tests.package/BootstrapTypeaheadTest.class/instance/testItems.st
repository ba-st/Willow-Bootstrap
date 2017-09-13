tests-Options
testItems

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead items: 12 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"items":12});</script>'