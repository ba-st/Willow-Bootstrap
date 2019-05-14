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
BootstrapComponentSupplierTest >> testTableBuilder [

	| supplier table html |

	supplier := self supplierClass online.

	table := supplier tableBuilder
		addColumn: [ :column | 
			column
				titled: 'Number';
				rendering: [ :number | number ]
			];
		build.

	table changeContentsTo: #(1 2 3).

	html := self render: table.

	self
		assert: html
		equals:
			'<table id="table-id1" class="table"><thead><th>Number</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr></tbody></table>'
]
