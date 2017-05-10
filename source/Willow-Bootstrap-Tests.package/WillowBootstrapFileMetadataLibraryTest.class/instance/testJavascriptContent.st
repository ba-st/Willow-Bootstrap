tests-Accessing
testJavascriptContent

	self
		assert: WillowBootstrapFileMetadataLibrary default jswillowbootstrapJsContent
		equals:
			'/*<n>* willow-bootstrap.js v4.0.0<n>* Copyright 2017 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'
				expandMacros