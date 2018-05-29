"
A BootstrapSelectLiveSearchCommandTest is a test class for testing the behavior of BootstrapSelectLiveSearchCommand
"
Class {
	#name : #BootstrapSelectLiveSearchCommandTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #'tests-processing' }
BootstrapSelectLiveSearchCommandTest >> testApplyToOn [

	| html |

	html := self apply: BootstrapSelectLiveSearchCommand default + BootstrapSelectCommand new toComponentDefinedBy: [ :canvas | canvas select ].

	self
		assert: html
		equals:
			'<select data-live-search="true" data-live-search-normalize="false" data-live-search-style="contains" class="selectpicker" id="id1"></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'
]

{ #category : #'tests-processing' }
BootstrapSelectLiveSearchCommandTest >> testNonDefaultApplyToOn [

	| html |

	html := self
		apply:
			[ :select :constants | 
			(BootstrapSelectLiveSearchCommand normalize: true placeholderText: 'Search...' style: constants >> #bootstrap >> #startsWith) + BootstrapSelectCommand new ]
				asWebComponentCommand
		toComponentDefinedBy: [ :canvas | canvas select ].

	self
		assert: html
		equals:
			'<select data-live-search="true" data-live-search-normalize="true" data-live-search-placeholder="Search..." data-live-search-style="startsWith" class="selectpicker" id="id1"></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'
]
