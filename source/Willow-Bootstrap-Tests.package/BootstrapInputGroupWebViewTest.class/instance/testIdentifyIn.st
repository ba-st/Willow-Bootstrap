tests-rendering
testIdentifyIn

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView prepending: (supplier inputGroupAddOnWrapping: 'http://') to: (supplier singleLineTextFieldApplying: [ :field |  ]) applying: [ :group |  ].

	html := self
		renderUsing: [ :canvas | 
			inputGroup identifyIn: canvas.
			canvas render: inputGroup ].

	self
		assert: html equals: '<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>';
		assert: inputGroup identifier equals: 'text-id1'