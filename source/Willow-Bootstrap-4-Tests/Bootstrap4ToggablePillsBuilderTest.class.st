Class {
	#name : #Bootstrap4ToggablePillsBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #initialization }
Bootstrap4ToggablePillsBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4ToggablePillsBuilderTest >> testCantBuildWithLessThanTwoPanes [

	self
		should: [ supplier pillsBuilder buildApplying: [ :pills |  ] ] raise: AssertionFailed;
		should: [ supplier pillsBuilder
				addPillHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :pills |  ] ]
			raise: AssertionFailed
]

{ #category : #tests }
Bootstrap4ToggablePillsBuilderTest >> testRenderContentOn [

	| tabs html |

	tabs := supplier pillsBuilder
		addPillHeadedBy: 'Home' containing: 'The home page';
		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :pills |  ].

	html := self render: tabs.

	self
		assert: html
		equals:
			 '<ul class="nav nav-pills" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="pill" aria-control="container-id1" href="#container-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="pill" aria-control="container-id2" href="#container-id2">Profile</a></li></ul><div class="tab-content"><div id="container-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="container-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]

{ #category : #tests }
Bootstrap4ToggablePillsBuilderTest >> testRenderContentOnWithCommands [

	| tabs html |

	tabs := supplier pillsBuilder
		addPillHeadedBy: 'Home' containing: 'The home page';
		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :pills | pills addClass bootstrap4 justifyContentEnd ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-pills justify-content-end" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="pill" aria-control="container-id1" href="#container-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="pill" aria-control="container-id2" href="#container-id2">Profile</a></li></ul><div class="tab-content"><div id="container-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="container-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]
