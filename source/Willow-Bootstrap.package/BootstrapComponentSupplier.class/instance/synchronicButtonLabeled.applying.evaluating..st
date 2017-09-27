Supplying
synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock

	^ SynchronicSubmitButtonWebView labeled: aRenderable applying: [ :field | field addClass bootstrap button + aComponentCommand ] evaluating: anActionBlock