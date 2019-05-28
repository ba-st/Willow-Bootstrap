"
A BootstrapComponentSupplierTest is a test class for testing the behavior of BootstrapComponentSupplier
"
Class {
	#name : #BootstrapComponentSupplierTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #testing }
BootstrapComponentSupplierTest class >> isAbstract [

	^ self name = #BootstrapComponentSupplierTest
]

{ #category : #private }
BootstrapComponentSupplierTest >> assertRenderingOf: aComponentCreationBlock equals: anExpectedHtml [

	| component html |

	component := aComponentCreationBlock value: self supplierClass online.

	html := self render: component.

	self assert: html equals: anExpectedHtml
]

{ #category : #private }
BootstrapComponentSupplierTest >> supplierClass [

	^ self subclassResponsibility
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testAsynchronicButtonLabeledApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				asynchronicButtonLabeled: 'Buy'
				applying: [ :anchor | anchor addClass bootstrapCommon buttonPrimary ]
			]
		equals: '<button class="btn btn-primary" type="button">Buy</button>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testAsynchronicLinkActingAsButtonLabeledApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				asynchronicLinkActingAsButtonLabeled: 'Buy'
				applying: [ :link | link addClass bootstrapCommon buttonPrimary ]
			]
		equals:
			'<a id="a-id1" role="button" class="btn btn-primary" href="#">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testAsynchronicLinkLabeledApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass bootstrapCommon buttonPrimary ] ]
		equals:
			'<a id="a-id1" class="btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testDecimalNumberFieldApplying [

	self assertRenderingOf: [ :supplier | supplier decimalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testFieldSetContainingApplyingWithLegendApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				fieldSetContaining: 'The View'
				applying: [ :fieldSet | fieldSet beDisabled ]
				withLegend: 'Its Title'
				applying: [ :legend | legend beAutofocused ] ]
		equals: '<fieldset disabled><legend autofocus>Its Title</legend>The View</fieldset>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testMultiLineTextFieldApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier multiLineTextFieldApplying: [ :field | field addClass bootstrapCommon textCenter ] ]
		equals: '<textarea rows="auto" cols="auto" name="1" class="form-control text-center"></textarea>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testMultipleSelectionListBoxDisplayingAtOnceApplying [

	self
		assertRenderingOf: [ :supplier | supplier multipleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ]
		equals: '<select name="1" size="10" class="form-control" multiple></select><input name="2" type="hidden"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testNaturalNumberFieldApplying [

	self assertRenderingOf: [ :supplier | supplier naturalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right" min="0"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testNotificationBuilder [

	self
		assertRenderingOf: [ :supplier | 
			supplier notificationBuilder
				wrapping: 'Ouch!';
				danger;
				buildApplying: [  ] ]
		equals: '<div class="alert alert-danger" role="alert">Ouch!</div>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testSingleSelectionListBoxDisplayingAtOnceApplying [

	self assertRenderingOf: [ :supplier | supplier singleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ] equals: '<select name="1" size="10" class="form-control"></select>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testSynchronicButtonLabeledApplyingEvaluating [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				synchronicButtonLabeled: 'Buy'
				applying: [ :link | link addClass bootstrapCommon buttonPrimary ]
				evaluating: [  ]
			]
		equals: '<button name="1" class="btn btn-primary" type="submit">Buy</button>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testTableBuilder [

	self
		assertRenderingOf: [ :supplier | 
			| table |

			table := supplier tableBuilder
				addColumn: [ :column | 
					column
						titled: 'Number';
						rendering: [ :number | number ]
					];
				build.

			table
				changeContentsTo: #(1 2 3);
				yourself
			]
		equals:
			'<table id="table-id1" class="table"><thead><th>Number</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr></tbody></table>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testUnorderedListApplyingListingApplyingToEach [ 

	self
		assertRenderingOf: [ :supplier | 
			supplier
				unorderedListApplying: [  ]
				listing:
					#('Cras justo odio' 'Dapibus ac facilisis in' 'Morbi leo risus' 'Porta ac consectetur ac' 'Vestibulum at eros')
				applyingToEach: [  ]
			]
		equals:
			'<ul class="list-group"><li class="list-group-item">Cras justo odio</li><li class="list-group-item">Dapibus ac facilisis in</li><li class="list-group-item">Morbi leo risus</li><li class="list-group-item">Porta ac consectetur ac</li><li class="list-group-item">Vestibulum at eros</li></ul>'
]
