tests
testApplyToOn

	| html |

	html := self apply: (BootstrapTypeaheadCommand searchingWith: [ :searchTerm | #(1 2 3 4) ] withSelectionDo: [ :selectedNumber |  ]) toComponentDefinedBy: [ :canvas | canvas textInput ].

	self
		assert: html
		equals:
			'<input id="id5" type="text"/><script type="text/javascript">$("#id5").typeahead({"source":function(searchTerm,response){$.getJSON("/",["1","2="+encodeURIComponent(searchTerm)].join("&"),function(data,status){response(data)})},"updater":function(item){return item.index},"afterSelect":function(activeItem){$.ajax({"url":"/","data":["3","4="+encodeURIComponent(activeItem)].join("&"),"dataType":"script"})}});</script>'