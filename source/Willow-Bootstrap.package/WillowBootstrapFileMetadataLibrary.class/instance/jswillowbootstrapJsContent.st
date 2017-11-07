Accessing
jswillowbootstrapJsContent

	^ '/*<n>* willow-bootstrap.js v<1s><n>* Copyright 2017 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n><2s>'
		expandMacrosWith: self version
		with:
			(self
				javascriptContentFrom: [ :script | 
					| bootstrap |
					self replaceTooltipDestroyFunctionIn: script.
					bootstrap := script willow bootstrap.
					bootstrap
						assign:
							(GRSmallDictionary new
								at: BootstrapConstants cleanModalFunctionName put: (self cleanModalFunctionUsing: script);
								yourself).
					script << bootstrap asImmediatelyInvokedFunctionExpression ])