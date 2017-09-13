tests-Options
testSorter

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead sorter: (JSFunction new arguments: #('item')) ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"sorter":function(item){}});</script>'