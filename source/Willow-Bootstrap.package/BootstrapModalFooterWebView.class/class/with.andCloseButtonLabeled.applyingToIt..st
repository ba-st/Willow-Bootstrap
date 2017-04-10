Instance Creation
with: aButtonWebView andCloseButtonLabeled: aRenderable applyingToIt: aCloseButtonCommand

	^ self containing: {aButtonWebView} andCloseButton: (self closeButtonLabeled: aRenderable applying: aCloseButtonCommand)