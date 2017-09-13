tests-Options
testUpdater

	| html |

	html := self
		renderTextInputApplying: [ :bootstrapTypeahead | 
			bootstrapTypeahead
				updater:
					(JSFunction new
						arguments: #('item');
						add: ((JSStream this alias: 'item') access: 'value');
						return: true;
						yourself) ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"updater":function(item){return item.value}});</script>'