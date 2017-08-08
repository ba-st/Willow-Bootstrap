tests
testRenderContentOnWithButton

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonDefault);
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		addDivider;
		addActionLabeled: 'Another action' executing: [ :button | button onTrigger disable ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><button class="btn dropdown-toggle btn-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a role="button" id="a-id1" class="btn">Action</a></li><li class="divider" aria-role="divider"></li><li><a role="button" id="a-id2" class="btn">Another action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});$("#a-id2").click(function(){$(this).prop("disabled",true)});</script>'