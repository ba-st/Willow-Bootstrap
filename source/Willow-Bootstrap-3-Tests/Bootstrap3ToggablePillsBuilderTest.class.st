"
A BootstrapToggablePillsBuilderTest is a test class for testing the behavior of BootstrapToggablePillsBuilder
"
Class {
	#name : #Bootstrap3ToggablePillsBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #initialization }
Bootstrap3ToggablePillsBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap3ComponentSupplier online
]

{ #category : #tests }
Bootstrap3ToggablePillsBuilderTest >> testCantBuildWithLessThanTwoPanes [

	self
		should: [ supplier pillsBuilder buildApplying: [ :pills |  ] ] raise: AssertionFailed;
		should: [ supplier pillsBuilder
				addPillHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :pills |  ] ]
			raise: AssertionFailed
]

{ #category : #tests }
Bootstrap3ToggablePillsBuilderTest >> testRenderContentOn [

	| tabs html |

	tabs := supplier pillsBuilder
		addPillHeadedBy: 'Home' containing: 'The home page';
		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :pills |  ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-pills" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]

{ #category : #tests }
Bootstrap3ToggablePillsBuilderTest >> testRenderContentOnWithCommands [

	| tabs html |

	tabs := supplier pillsBuilder
		addPillHeadedBy: 'Home' containing: 'The home page';
		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :pills | pills addClass bootstrap3 navStacked ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-pills nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]
