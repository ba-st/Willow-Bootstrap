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
