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
			'<div class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li class="dropdown-header">Dropdown header</li><li><a id="a-id2" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'