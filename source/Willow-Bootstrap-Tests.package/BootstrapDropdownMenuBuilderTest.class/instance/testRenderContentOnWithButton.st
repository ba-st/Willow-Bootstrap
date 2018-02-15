tests
testRenderContentOnWithButton

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown' applying: [ :button | button addClass bootstrap buttonDefault ];
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		addDivider;
		addActionLabeled: 'Another action' executing: [ :button | button onTrigger disable ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><button class="btn dropdown-toggle btn-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li><li class="divider" aria-role="divider"></li><li><a id="a-id2" role="button">Another action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'