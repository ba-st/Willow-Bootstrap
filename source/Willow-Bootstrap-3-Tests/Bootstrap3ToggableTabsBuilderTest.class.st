"
A BootstrapToggableTabsBuilderTest is a test class for testing the behavior of BootstrapToggableTabsBuilder
"
Class {
	#name : #Bootstrap3ToggableTabsBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #initialization }
Bootstrap3ToggableTabsBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap3ComponentSupplier online
]

{ #category : #tests }
Bootstrap3ToggableTabsBuilderTest >> testCantBuildWithLessThanTwoPanes [

	self
		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;
		should: [ supplier tabsBuilder
				addTabHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :tabs |  ] ]
			raise: AssertionFailed
]

{ #category : #tests }
Bootstrap3ToggableTabsBuilderTest >> testRenderContentOn [

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :container |  ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-tabs" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="container-id1" href="#container-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="container-id2" href="#container-id2">Profile</a></li></ul><div class="tab-content"><div id="container-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="container-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]

{ #category : #tests }
Bootstrap3ToggableTabsBuilderTest >> testRenderContentOnWithCommands [

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :container | container addClass bootstrap3 navStacked ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-tabs nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="container-id1" href="#container-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="container-id2" href="#container-id2">Profile</a></li></ul><div class="tab-content"><div id="container-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="container-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]
