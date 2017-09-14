tests
testApplyToOnWithConfiguration

	| html |

	html := self
		apply: (BootstrapTypeaheadCommand searchingWith: [ :searchTerm | #(1 2 3 4) ] withSelectionDo: [ :selectedNumber |  ] configuredBy: [ :typeahead | typeahead minLength: 5 ])
		toComponentDefinedBy: [ :canvas | canvas textInput ].

	self
		assert: html
		equals:
			'<input id="id5" type="text"/><script type="text/javascript">$("#id5").typeahead({"source":function(searchTerm,response){$.getJSON("/",["1","2="+encodeURIComponent(searchTerm)].join("&"),function(data,status){response(data)})},"updater":function(item){return item},"afterSelect":function(activeItem){$.ajax({"url":"/","data":["3","4="+encodeURIComponent(activeItem.index)].join("&"),"dataType":"script"})},"minLength":5});</script>'