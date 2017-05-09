Accessing
jswillowbootstrapJsContent

	^ '/* 
*	willow-bootstrap.js v<1s>
* Copyright 2017 - Buenos Aires Smalltalk
* Licensed under the MIT license
*/<n><2s>'
		expandMacrosWith: self version
		with:
			(self
				javascriptContentFrom: [ :script | 
					| bootstrap |

					bootstrap := script willow bootstrap.
					bootstrap
						assign:
							(GRSmallDictionary new
								at: BootstrapConstants cleanModalFunctionName put: (self cleanModalFunctionUsing: script);
								yourself).
					script << bootstrap asImmediatelyInvokedFunctionExpression ])