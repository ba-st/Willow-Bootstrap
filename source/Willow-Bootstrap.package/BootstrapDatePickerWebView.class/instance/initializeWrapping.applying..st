initialization
initializeWrapping: aTextField applying: aComponentCommand

	textField := aTextField.
	container := GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: self textField.
			canvas div
				class: BootstrapCssStyles inputGroupAddon;
				with: [ canvas small: (BootstrapIconWebView representing: Glyphicons triangleBottom) ] ]
		applying: [ :div | div addClass bootstrap inputGroup + div addClass bootstrap date + BootstrapDatepickerCommand new + aComponentCommand ]