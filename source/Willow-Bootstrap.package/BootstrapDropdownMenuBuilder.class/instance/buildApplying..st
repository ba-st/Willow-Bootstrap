building
buildApplying: aComponentCommand

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: buttonBinding content.
			canvas unorderedList
				class: BootstrapCssStyles dropdownMenu;
				with: [ menuItems do: [ :menuItem | canvas render: menuItem ] ] ]
		applying: aComponentCommand + (ComponentClassificationCommand toStyleWith: BootstrapCssStyles dropdown)