"
A BootstrapToggableTabsBuilderTest is a test class for testing the behavior of BootstrapToggableTabsBuilder
"
Class {
	#name : #BootstrapToggableTabsBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #initialization }
BootstrapToggableTabsBuilderTest >> setUp [

	super setUp.
	supplier := BootstrapComponentSupplier online
]

{ #category : #tests }
BootstrapToggableTabsBuilderTest >> testCantBuildWithLessThanTwoPanes [

	self
		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;
		should: [ supplier tabsBuilder
				addTabHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :tabs |  ] ]
			raise: AssertionFailed
]

{ #category : #tests }
BootstrapToggableTabsBuilderTest >> testRenderContentOn [

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :container |  ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-tabs" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]

{ #category : #tests }
BootstrapToggableTabsBuilderTest >> testRenderContentOnWithCommands [

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: [ :container | container addClass bootstrap navStacked ].

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-tabs nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'
]
