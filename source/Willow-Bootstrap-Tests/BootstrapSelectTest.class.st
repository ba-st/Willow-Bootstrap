"
A BootstrapSelectTest is a test class for testing the behavior of BootstrapSelect
"
Class {
	#name : #BootstrapSelectTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #private }
BootstrapSelectTest >> renderMultiSelectApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| select bootstrapSelect |

			select := canvas multiSelect.
			select list: #(1 2 3).
			bootstrapSelect := canvas jQuery new bootstrapSelect.
			aBlock value: bootstrapSelect.
			select script: bootstrapSelect ]
]

{ #category : #private }
BootstrapSelectTest >> renderSelectApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| select bootstrapSelect |

			select := canvas select.
			select list: #(1 2 3).
			bootstrapSelect := canvas jQuery new bootstrapSelect.
			aBlock value: bootstrapSelect.
			select script: bootstrapSelect ]
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testActionsBox [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect actionsBox: true ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"actionsBox":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testContainer [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect container: 'body' ].

	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"container":"body"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testCountSelectedText [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect countSelectedText: 'Selected {0} of {1}' ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"countSelectedText":"Selected {0} of {1}"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testCountSelectedTextWithFunction [

	| html |

	html := self
		renderMultiSelectApplying: [ :bootstrapSelect | 
			bootstrapSelect
				countSelectedText:
					(JSFunction new
						arguments: #('selectedCount' 'totalCount');
						return: true;
						add: 'Something selected';
						yourself) ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"countSelectedText":function(selectedCount,totalCount){return "Something selected"}});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testDeselectAll [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect deselectAll ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("deselectAll");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testDeselectAllText [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect deselectAllText: 'Remove Selection' ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"deselectAllText":"Remove Selection"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testDestroy [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect destroy ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("destroy");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testDropdownAlignRight [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect dropdownAlignRight: #auto ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"dropdownAlignRight":"auto"});</script>'.

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect dropdownAlignRight: true ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"dropdownAlignRight":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testDropupAuto [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect dropupAuto: true ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"dropupAuto":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testHeader [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect header: 'Header' ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"header":"Header"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testHide [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect hide ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("hide");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testHideDisabled [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect hideDisabled: true ].

	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"hideDisabled":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testIconBase [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect iconBase: 'fa' ].

	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"iconBase":"fa"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testLiveSearchOptions [

	| html |

	html := self
		renderSelectApplying: [ :bootstrapSelect | 
			bootstrapSelect
				liveSearch: true;
				liveSearchNormalize: true;
				liveSearchPlaceholder: 'Search...';
				liveSearchStyle: #startsWith ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"liveSearch":true,"liveSearchNormalize":true,"liveSearchPlaceholder":"Search...","liveSearchStyle":"startsWith"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testLiveSearchStyle [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect liveSearchStyle: #contains ].

	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"liveSearchStyle":"contains"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testMaxOptions [

	| html |

	html := self
		renderMultiSelectApplying: [ :bootstrapSelect | 
			bootstrapSelect
				maxOptions: 5;
				maxOptionsText: 'Select no more than five items' ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"maxOptions":5,"maxOptionsText":"Select no more than five items"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testMaxOptionsWithArray [

	| html |

	html := self
		renderMultiSelectApplying: [ :bootstrapSelect | 
			bootstrapSelect
				maxOptions: 5;
				maxOptionsText: #('Total max' 'Group max') ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"maxOptions":5,"maxOptionsText":["Total max","Group max"]});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testMobile [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect mobile: true ].

	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"mobile":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testMobileMethod [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect mobile ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("mobile");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testMultipleSeparator [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect multipleSeparator: '/ ' ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"multipleSeparator":"/ "});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testNoneSelectedText [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect noneSelectedText: 'Nothing' ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"noneSelectedText":"Nothing"});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnChanged [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onChanged: JSFunction new ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("changed.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnHidden [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onHidden: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("hidden.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnHide [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onHide: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("hide.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnLoaded [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onLoaded: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("loaded.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnRefreshed [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onRefreshed: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("refreshed.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnRendered [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onRendered: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("rendered.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnShow [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onShow: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("show.bs.select",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapSelectTest >> testOnShown [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onShown: JSFunction new ].

	self
		assert: html
		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("shown.bs.select",function(){});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testRefresh [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect refresh ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("refresh");</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testRender [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect render ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testSelectAll [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectAll ].

	self
		assert: html
		equals:
			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("selectAll");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testSelectAllText [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectAllText: 'Select All' ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectAllText":"Select All"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testSelectOnTab [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect selectOnTab: true ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectOnTab":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testSelectedTextFormat [

	| html |

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormat: #values ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"values"});</script>'.

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormat: #static ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"static"});</script>'.

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormat: #count ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"count"});</script>'.

	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormatCountAfter: 3 ].

	self
		assert: html
		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"count > 3"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testSetStyle [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect setStyle ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("setStyle");</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testShow [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect show ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("show");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testShowContent [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showContent: true ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showContent":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testShowIcon [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showIcon: true ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showIcon":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testShowSubtext [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showSubtext: true ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showSubtext":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testShowTick [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showTick: true ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showTick":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testSize [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect size: 15 ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"size":15});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testStyle [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect style: nil ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"style":null});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testTickIcon [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect tickIcon: 'ok'  ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"tickIcon":"ok"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testTitle [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect title: 'Please select:'  ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"title":"Please select:"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapSelectTest >> testToggle [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect toggle ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("toggle");</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testWidth [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect width: #fit ].

	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"width":"fit"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testWidthInCssUnits [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect width: 10 px  ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"width":"10px"});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testWindowPadding [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect windowPadding: 2 ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"windowPadding":2});</script>'
]

{ #category : #'tests-Options' }
BootstrapSelectTest >> testWindowPaddingWithArray [

	| html |

	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect windowPadding: #(1 2 3 4) ].

	self
		assert: html
		equals:
			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"windowPadding":[1,2,3,4]});</script>'
]
