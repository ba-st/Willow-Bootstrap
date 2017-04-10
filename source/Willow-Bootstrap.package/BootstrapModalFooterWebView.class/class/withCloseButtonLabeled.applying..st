Instance Creation
withCloseButtonLabeled: aRenderable applying: aComponentCommand

	^ self containing: #() andCloseButton: (self closeButtonLabeled: aRenderable applying: aComponentCommand)