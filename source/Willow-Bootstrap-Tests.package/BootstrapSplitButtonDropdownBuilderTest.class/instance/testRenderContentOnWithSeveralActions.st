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
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action #1</a></li><li><a id="a-id3" role="button">Action #2</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();Willow.callServer({"type":"POST","url":"/","data":["2",$(this).closest("form").find(":input").serialize()].join("&")})});</script>'