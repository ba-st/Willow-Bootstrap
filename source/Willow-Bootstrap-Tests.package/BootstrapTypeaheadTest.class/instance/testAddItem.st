tests-Options
testAddItem

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead addItem: false ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"addItem":false});</script>'