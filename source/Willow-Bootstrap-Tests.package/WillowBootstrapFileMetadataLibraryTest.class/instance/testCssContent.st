tests-Accessing
testCssContent

	self
		assert: WillowBootstrapFileMetadataLibrary default csswillowbootstrapCssContent
		equals:
			'/* 
*	willow-bootstrap.css v4.0.0
* Copyright 2017 - Buenos Aires Smalltalk
* Licensed under the MIT license
*/
input[type="number"]::-webkit-outer-spin-button ,
input[type="number"]::-webkit-inner-spin-button
{
	-webkit-appearance: none;
}

input[type="number"]
{
	-moz-appearance: textfield;
}'