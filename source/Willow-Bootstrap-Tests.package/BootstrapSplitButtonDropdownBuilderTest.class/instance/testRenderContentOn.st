tests
testRenderContentOn

	| button html |

	button := BootstrapComponentSupplier online splitButtonDropdownBuilder
		labeled: 'Dropdown' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonDanger);
		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a role="button" id="a-id1" class="btn">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});</script>'