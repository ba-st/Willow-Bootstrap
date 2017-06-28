tests
testRenderContentOn

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		addDivider;
		addActionLabeled: 'Another action' executing: [ :button | button onTrigger disable ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><a role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown<span class="caret"></span></a><ul class="dropdown-menu"><li><a role="button" id="a-id1">Action</a></li><li class="divider" aria-role="divider"></li><li><a role="button" id="a-id2">Another action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});$("#a-id2").click(function(){$(this).prop("disabled",true)});</script>'