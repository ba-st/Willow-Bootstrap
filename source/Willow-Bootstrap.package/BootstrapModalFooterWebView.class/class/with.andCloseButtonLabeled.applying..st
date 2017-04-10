Instance Creation
with: aButtonWebView andCloseButtonLabeled: aRenderable applying: aCloseButtonCommand

	^ self containing: {aButtonWebView} andCloseButton: (self closeButtonLabeled: aRenderable applying: aCloseButtonCommand)