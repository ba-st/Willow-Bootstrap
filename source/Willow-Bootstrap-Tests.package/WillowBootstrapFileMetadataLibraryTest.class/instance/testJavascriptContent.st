tests-Accessing
testJavascriptContent

	self
		assert: WillowBootstrapFileMetadataLibrary default jswillowbootstrapJsContent
		equals:
			'/* 
*	willow-bootstrap.js v4.0.0
* Copyright 2017 - Buenos Aires Smalltalk
* Licensed under the MIT license
*/
(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'