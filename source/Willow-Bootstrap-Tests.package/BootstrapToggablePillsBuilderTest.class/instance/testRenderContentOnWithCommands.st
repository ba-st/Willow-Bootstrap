tests
testRenderContentOnWithCommands

	| tabs html |

	tabs := supplier pillsBuilder
		addPillHeadedBy: 'Home' containing: 'The home page';
		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];
		buildApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles navStacked).

	html := self render: tabs.

	self
		assert: html
		equals:
			'<ul class="nav nav-pills nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div role="tabpanel" class="tab-pane active" id="pill-id1">The home page</div><div role="tabpanel" class="tab-pane" id="pill-id2"><strong>This is my profile.</strong></div></div>'