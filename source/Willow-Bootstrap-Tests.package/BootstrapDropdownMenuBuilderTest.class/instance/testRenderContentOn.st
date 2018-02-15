tests
testRenderContentOn

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		addDivider;
		addActionLabeled: 'Another action' executing: [ :button | button onTrigger disable ] applying: [ :button | button addClass willow ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li><li class="divider" aria-role="divider"></li><li><a id="a-id3" role="button" class="willow">Another action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'