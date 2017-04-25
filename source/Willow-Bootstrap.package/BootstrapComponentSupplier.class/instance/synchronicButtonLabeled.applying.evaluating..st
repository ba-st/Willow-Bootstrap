Supplying
synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock

	^ SynchronicSubmitButtonWebView labeled: aRenderable applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles button) + aComponentCommand evaluating: anActionBlock