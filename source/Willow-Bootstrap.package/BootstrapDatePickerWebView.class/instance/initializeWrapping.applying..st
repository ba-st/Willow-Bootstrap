initialization
initializeWrapping: aTextField applying: aComponentCommand

	textField := aTextField.
	container := GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: self textField.
			canvas div
				class: BootstrapCssStyles inputGroupAddon;
				with: [ canvas small: (BootstrapIconWebView representing: Glyphicons triangleBottom) ] ]
		applying:
			(ComponentClassificationCommand
				toStyleWithAll:
					{BootstrapCssStyles inputGroup.
					BootstrapDatepickerConstants date}) + BootstrapDatepickerCommand new + aComponentCommand