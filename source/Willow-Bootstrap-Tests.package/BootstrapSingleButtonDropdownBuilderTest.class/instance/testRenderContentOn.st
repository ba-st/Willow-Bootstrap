tests
testRenderContentOn

	| button html |

	button := supplier singleButtonDropdownBuilder
		labeled: 'Dropdown' applying: [ :dropdownButton | dropdownButton addClass bootstrap buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'