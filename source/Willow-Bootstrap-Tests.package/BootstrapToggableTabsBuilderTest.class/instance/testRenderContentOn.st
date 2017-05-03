tests
testRenderContentOn

	| tabs html |

	tabs := supplier tabsBuilder
		addTabHeadedBy: 'Home' containing: 'The home page';
		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: CompositeComponentCommand empty.

	html := self render: tabs.

	self assert: html equals: '<ul class="nav nav-tabs" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div role="tabpanel" class="tab-pane active" id="tab-id1">The home page</div><div role="tabpanel" class="tab-pane" id="tab-id2"><strong>This is my profile.</strong></div></div>'