"
A BootstrapTypeaheadTest is a test class for testing the behavior of BootstrapTypeahead
"
Class {
	#name : #BootstrapTypeaheadTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Typeahead'
}

{ #category : #rendering }
BootstrapTypeaheadTest >> renderTextInputApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| input bootstrapTypeAhead |

			input := canvas textInput.
			bootstrapTypeAhead := canvas jQuery new bootstrapTypeahead.
			aBlock value: bootstrapTypeAhead.
			input script: bootstrapTypeAhead ]
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testAddItem [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead addItem: false ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"addItem":false});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testAfterSelect [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead afterSelect: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"afterSelect":function(){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testAppendTo [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead appendTo: JSStream this ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"appendTo":this});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testAutoSelect [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead autoSelect: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"autoSelect":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testDelay [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead delay: 1 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"delay":1});</script>'
]

{ #category : #'tests-Methods' }
BootstrapTypeaheadTest >> testDestroy [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead destroy ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("destroy");</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testDisplayText [

	| html |

	html := self
		renderTextInputApplying: [ :bootstrapTypeahead | 
			bootstrapTypeahead
				displayText:
					(((JSStream this alias: 'item')
						access: 'name';
						asFunction: #('item'))
						return: true;
						yourself) ].

	self
		assert: html
		equals:
			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"displayText":function(item){return item.name}});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testFitToElement [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead fitToElement: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"fitToElement":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapTypeaheadTest >> testGetActive [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead getActive ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("getActive");</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testHighlighter [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead highlighter: (JSFunction new arguments: #(item)) ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"highlighter":function(item){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testItems [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead items: 12 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"items":12});</script>'
]

{ #category : #'tests-Methods' }
BootstrapTypeaheadTest >> testLookup [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead lookup ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("lookup");</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testMatcher [

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
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testMinLength [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead minLength: 12 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"minLength":12});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testScrollHeight [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead scrollHeight: 12 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"scrollHeight":12});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testShowHintOnFocus [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead showHintOnFocus: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"showHintOnFocus":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testSorter [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead sorter: (JSFunction new arguments: #('item')) ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"sorter":function(item){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testSource [

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead source: #('a' 'b') ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"source":["a","b"]});</script>'
]

{ #category : #'tests-Options' }
BootstrapTypeaheadTest >> testUpdater [

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
]
