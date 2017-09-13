tests-Options
testMatcher

	| html |

	html := self
		renderTextInputApplying: [ :bootstrapTypeahead | 
			bootstrapTypeahead
				matcher:
					(JSFunction new
						arguments: #('item');
						add: true;
						return: true;
						yourself) ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"matcher":function(item){return true}});</script>'