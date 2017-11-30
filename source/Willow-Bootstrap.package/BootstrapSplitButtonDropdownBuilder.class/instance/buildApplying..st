building
buildApplying: aComponentCommand

	^ BootstrapSplitButtonWebView
		with: (GenericContainerWebView wrapping: self content applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap buttonGroup ])
		and: mainButtonBinding content