Class {
	#name : #Bootstrap4GridBuilderTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #tests }
Bootstrap4GridBuilderTest >> testApplyingCellCommand [

	| grid html |

	grid := Bootstrap4GridBuilder new
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		applyingToCells: [ :cell | cell addClass bootstrap4 textMuted ];
		build.

	html := self render: grid.

	self
		assert: html
		equals:
			'<div class="row"><div class="col text-muted">1</div><div class="col text-muted">2</div><div class="w-100"></div><div class="col text-muted">3</div><div class="col text-muted">4</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testApplyingRowCommand [

	| grid html |

	grid := Bootstrap4GridBuilder new
		columnsPerRow: 3;
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		buildApplying: [ :row | row addClass bootstrap4 textMuted ].

	html := self render: grid.

	self
		assert: html
		equals:
			'<div class="row text-muted"><div class="col">1</div><div class="col">2</div><div class="col">3</div><div class="w-100"></div><div class="col">4</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testEvenlyDistributed [

	| grid html |

	grid := Bootstrap4GridBuilder new
		columnsPerRow: 3;
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		build.

	html := self render: grid.

	self
		assert: html
		equals:
			'<div class="row"><div class="col">1</div><div class="col">2</div><div class="col">3</div><div class="w-100"></div><div class="col">4</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testForExtraSmallDevices [

	| grid html |

	grid := Bootstrap4GridBuilder new
		addContent: 1;
		forExtraSmallDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col">1</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testForLargeDevices [

	| grid html |

	grid := Bootstrap4GridBuilder new
		addContent: 1;
		forLargeDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-lg">1</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testForMediumDevices [

	| grid html |

	grid := Bootstrap4ComponentSupplier online gridBuilder
		addContent: 1;
		forMediumDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-md">1</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testForSmallDevices [

	| grid html |

	grid := Bootstrap4ComponentSupplier online gridBuilder
		addContent: 1;
		forSmallDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-sm">1</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testWithCustomColumnWidths [

	| grid html |

	grid := Bootstrap4GridBuilder new
		columnsWidths: #(1 4 7);
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		build.

	html := self render: grid.

	self
		assert: html
		equals:
			'<div class="row"><div class="col-1">1</div><div class="col-4">2</div><div class="col-7">3</div><div class="w-100"></div><div class="col-1">4</div></div>'
]

{ #category : #tests }
Bootstrap4GridBuilderTest >> testWithCustomColumnWidthsForMediumDevices [

	| grid html |

	grid := Bootstrap4GridBuilder new
		columnsWidths: #(1 4 7);
		forMediumDevices;
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		addContent: 5;
		build.

	html := self render: grid.

	self
		assert: html
		equals:
			'<div class="row"><div class="col-md-1">1</div><div class="col-md-4">2</div><div class="col-md-7">3</div><div class="w-100"></div><div class="col-md-1">4</div><div class="col-md-4">5</div></div>'
]
