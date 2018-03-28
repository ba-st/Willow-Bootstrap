tests-Accessing
testCssContent

	self
		assert: WillowBootstrapFileMetadataLibrary default csswillowbootstrapCssContent
		equals:
			'/*<n>* willow-bootstrap.css v7.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>input[type="number"]::-webkit-outer-spin-button ,<n>input[type="number"]::-webkit-inner-spin-button<n>{<n><t>-webkit-appearance: none;<n>}<n><n>input[type="number"]<n>{<n><t>-moz-appearance: textfield;<n>}'
				expandMacros
