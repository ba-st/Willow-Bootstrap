tests
testRenderContentOnWithNonDropdownButtonCommands

	| splitButton html |

	splitButton := BootstrapComponentSupplier online splitButtonDropdownBuilder
		labeled: 'Dropdown' applyingToMainButton: [ :mainButton | mainButton beDisabled ] andToBoth: [ :button | button addClass bootstrap buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];
		build.

	html := self render: splitButton.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" disabled="disabled" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a role="button" id="a-id1">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});</script>'