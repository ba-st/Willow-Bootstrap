Class {
	#name : #Bootstrap4ToggableTabsBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #initialization }
Bootstrap4ToggableTabsBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4ToggableTabsBuilderTest >> testCantBuildWithLessThanTwoPanes [

	self
		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;
		should: [ supplier tabsBuilder
				addTabHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :tabs |  ] ]
			raise: AssertionFailed
]

{ #category : #tests }
Bootstrap4ToggableTabsBuilderTest >> testRenderContentOn [

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :container |  ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-tabs" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="tab" aria-control="container-id1" href="#container-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="tab" aria-control="container-id2" href="#container-id2">Profile</a></li></ul><div class="tab-content"><div id="container-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="container-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]

{ #category : #tests }
Bootstrap4ToggableTabsBuilderTest >> testRenderContentOnWithCommands [

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :container | container addClass bootstrap4 justifyContentEnd ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-tabs justify-content-end" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="tab" aria-control="container-id1" href="#container-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="tab" aria-control="container-id2" href="#container-id2">Profile</a></li></ul><div class="tab-content"><div id="container-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="container-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]
