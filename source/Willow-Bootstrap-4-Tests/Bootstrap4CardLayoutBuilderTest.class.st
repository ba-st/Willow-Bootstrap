"
A Bootstrap4CardLayoutBuilderTest is a test class for testing the behavior of Bootstrap4CardLayoutBuilder
"
Class {
	#name : #Bootstrap4CardLayoutBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #running }
Bootstrap4CardLayoutBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4CardLayoutBuilderTest >> testRenderingColumns [

	| cardGroup html |

	cardGroup := supplier cardLayoutBuilder
		addCard: [ :cardBuilder | cardBuilder addText: 'Hello success!' ]
			applying: [ :card | card addClass bootstrap4 backgroundSuccess ];
		addCard: [ :cardBuilder | cardBuilder addText: 'Hello!' ];
		useColumnLayout;
		build.

	html := self render: cardGroup.

	self
		assert: html
		equals:
			'<div class="card-columns"><div class="card bg-success"><div class="card-body"><p class="card-text">Hello success!</p></div></div><div class="card"><div class="card-body"><p class="card-text">Hello!</p></div></div></div>'
]

{ #category : #tests }
Bootstrap4CardLayoutBuilderTest >> testRenderingDeck [

	| cardGroup html |

	cardGroup := supplier cardLayoutBuilder
		addCard: [ :cardBuilder | cardBuilder addText: 'Hello success!' ]
			applying: [ :card | card addClass bootstrap4 backgroundSuccess ];
		addCard: [ :cardBuilder | cardBuilder addText: 'Hello!' ];
		useDeckLayout;
		build.

	html := self render: cardGroup.

	self
		assert: html
		equals:
			'<div class="card-deck"><div class="card bg-success"><div class="card-body"><p class="card-text">Hello success!</p></div></div><div class="card"><div class="card-body"><p class="card-text">Hello!</p></div></div></div>'
]

{ #category : #tests }
Bootstrap4CardLayoutBuilderTest >> testRenderingGroup [

	| cardGroup html |

	cardGroup := supplier cardLayoutBuilder
		addCard: [ :cardBuilder | cardBuilder addText: 'Hello success!' ]
			applying: [ :card | card addClass bootstrap4 backgroundSuccess ];
		addCard: [ :cardBuilder | cardBuilder addText: 'Hello!' ];
		useGroupLayout;
		build.

	html := self render: cardGroup.

	self
		assert: html
		equals:
			'<div class="card-group"><div class="card bg-success"><div class="card-body"><p class="card-text">Hello success!</p></div></div><div class="card"><div class="card-body"><p class="card-text">Hello!</p></div></div></div>'
]
