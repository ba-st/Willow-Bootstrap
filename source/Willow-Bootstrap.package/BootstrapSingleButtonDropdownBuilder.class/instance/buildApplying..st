building
buildApplying: aComponentCommand

	^ GenericContainerWebView wrapping: self content applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap buttonGroup ]