"
A WillowBootstrapFileMetadataLibraryTest is a test class for testing the behavior of WillowBootstrapFileMetadataLibrary
"
Class {
	#name : #WillowBootstrapFileMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Libraries'
}

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testCssContent [

	self
		assert: WillowBootstrapFileMetadataLibrary default csswillowbootstrapCssContent
		equals:
			'/*<n>* willow-bootstrap.css v7.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>input[type="number"]::-webkit-outer-spin-button ,<n>input[type="number"]::-webkit-inner-spin-button<n>{<n><t>-webkit-appearance: none;<n>}<n><n>input[type="number"]<n>{<n><t>-moz-appearance: textfield;<n>}'
				expandMacros

]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ WillowBootstrapFileMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('willow-bootstrap-7.0.0' 'willow-bootstrap-7.0.0/css' 'willow-bootstrap-7.0.0/js');
				assert: GRPlatform current createdFiles equals: #('willow-bootstrap-7.0.0/css/willow-bootstrap.css' 'willow-bootstrap-7.0.0/js/willow-bootstrap.js') ]

]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testForDevelopment [

	self
		assert: WillowBootstrapFileMetadataLibrary forDeployment equals: WillowBootstrapFileMetadataLibrary;
		assert: WillowBootstrapFileMetadataLibrary forDevelopment equals: WillowBootstrapFileMetadataLibrary
]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: WillowBootstrapFileMetadataLibrary isForDevelopment;
		assert: WillowBootstrapFileMetadataLibrary isForDeployment
]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testJavascriptContent [

	self
		assert: WillowBootstrapFileMetadataLibrary default jswillowbootstrapJsContent
		equals:
			'/*<n>* willow-bootstrap.js v7.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>$.prototype.tooltip.Constructor.prototype.destroy=function(){var that = this
	clearTimeout(this.timeout)
	this.hide(function () {
	  null!=that.$element && that.$element.off("." + that.type).removeData("bs." + that.type)
	  if (that.$tip) {
		that.$tip.detach()
	  }
	  that.$tip = null
	  that.$arrow = null
	  that.$viewport = null
	  that.$element = null
	})};(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'
				expandMacros

]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testVersion [

	self assert: WillowBootstrapFileMetadataLibrary version equals: WillowBootstrapFileMetadataLibrary default version
]
