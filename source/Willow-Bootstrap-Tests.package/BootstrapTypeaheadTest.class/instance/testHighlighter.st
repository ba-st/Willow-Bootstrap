tests-Options
testHighlighter

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead highlighter: (JSFunction new arguments: #(item)) ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"highlighter":function(item){}});</script>'