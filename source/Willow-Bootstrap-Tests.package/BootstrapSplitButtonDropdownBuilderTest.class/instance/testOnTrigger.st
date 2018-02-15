tests
testOnTrigger

	"This is a Split Button, so onTrigger must act on the main button not the dropdown one."

	| splitButton html |

	splitButton := BootstrapComponentSupplier online splitButtonDropdownBuilder
		labeled: 'Dropdown' applying: [ :dropdownButton | dropdownButton addClass bootstrap buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];
		build.

	splitButton onTrigger disable.

	html := self render: splitButton.

	self
		assert: html
		equals:
			'<div class="btn-group"><button id="button-id1" class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li></ul></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'