tests
testRenderContentOnWithSeveralActions

	| button html |

	button := BootstrapComponentSupplier online splitButtonDropdownBuilder
		labeled: 'Dropdown' applying: [ :dropdownButton | dropdownButton addClass bootstrap buttonDanger ];
		addActionLabeled: 'Action #1' executing: [ :action | action onTrigger disable ];
		addActionLabeled: 'Action #2' executing: [ :action | action onTrigger serializeContainerForm ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a role="button" id="a-id1">Action #1</a></li><li><a role="button" id="a-id3">Action #2</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});$("#a-id3").click(function(){Willow.callServer({"type":"POST","url":"/","data":["2",$(this).closest("form").find(":input").serialize()].join("&")})});</script>'