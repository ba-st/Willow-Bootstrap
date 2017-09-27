building
buildApplying: aComponentCommand

	^ GenericContainerWebView wrapping: self content applying: aComponentCommand asWebComponentCommand + (ComponentClassificationCommand toStyleWith: self containerStyle)