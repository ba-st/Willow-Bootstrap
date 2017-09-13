tests
testApplyToOnWithRendering

	| html |

	html := self
		apply:
			(BootstrapTypeaheadCommand
				searchingWith: [ :searchTerm | #(1 2 3 4) ]
				labeledBy: [ :number | '#' , number greaseString ]
				withSelectionDo: [ :selectedNumber |  ]
				thenRendering: (IdentifiedWebView forDivNamed: 'test' containing: [  ]))
		toComponentDefinedBy: [ :canvas | canvas textInput ].

	self
		assert: html
		equals:
			'<input id="id7" type="text"/><script type="text/javascript">$("#id7").typeahead({"source":function(searchTerm,response){$.getJSON("/",["2","3="+encodeURIComponent(searchTerm)].join("&"),function(data,status){response(data)})},"updater":function(item){return item.index},"afterSelect":function(activeItem){$.ajax({"url":"/","data":["4","5="+encodeURIComponent(activeItem)].join("&"),"dataType":"script","complete":function(){$("#test-id1").load("/","6")}})}});</script>'