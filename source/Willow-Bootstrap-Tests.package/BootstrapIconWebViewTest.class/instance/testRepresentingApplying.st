tests
testRepresentingApplying

	| icon html |

	icon := BootstrapIconWebView representing: Glyphicons menuUp applying: [ :span :constants | span setData: constants bootstrap dismiss to: true ].

	html := self render: icon.

	self assert: html equals: '<span class="glyphicon glyphicon-menu-up" data-dismiss="data-dismiss"></span>'