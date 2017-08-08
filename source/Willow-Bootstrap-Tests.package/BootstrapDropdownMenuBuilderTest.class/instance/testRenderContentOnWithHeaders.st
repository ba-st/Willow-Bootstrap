tests
testRenderContentOnWithHeaders

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown';
		addHeaderLabeled: 'Dropdown header';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><a role="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li class="dropdown-header">Dropdown header</li><li><a role="button" id="a-id1" class="btn">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});</script>'