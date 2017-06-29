building
buildApplying: aComponentCommand

	^ GenericContainerWebView wrapping: self content applying: aComponentCommand + (ComponentClassificationCommand toStyleWith: self containerStyle)