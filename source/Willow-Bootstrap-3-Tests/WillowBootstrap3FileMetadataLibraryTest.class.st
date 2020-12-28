Class {
	#name : #WillowBootstrap3FileMetadataLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-Libraries'
}

{ #category : #'tests-Accessing' }
WillowBootstrap3FileMetadataLibraryTest >> testCssContent [

	self
		assert: WillowBootstrap3FileMetadataLibrary default csswillowbootstrapCssContent
		equals:
			'/*<n>* willow-bootstrap.css v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>input[type="number"]::-webkit-outer-spin-button ,<n>input[type="number"]::-webkit-inner-spin-button<n>{<n><t>-webkit-appearance: none;<n>}<n><n>input[type="number"]<n>{<n><t>-moz-appearance: textfield;<n>}'
				expandMacros

]

{ #category : #'tests-Accessing' }
WillowBootstrap3FileMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: WillowBootstrap3FileMetadataLibrary default
		createsAsFolders: #('willow-bootstrap-8.0.0' 'willow-bootstrap-8.0.0/css' 'willow-bootstrap-8.0.0/js')
		andFileContentsMatching:
			{('willow-bootstrap-8.0.0/css/willow-bootstrap.css' -> 'ac56a8ae26202553d89bd1246e6631e7440fda84').
			('willow-bootstrap-8.0.0/js/willow-bootstrap.js' -> 'f6a952e7149bb03d6f767b9523aed49b20372222')}
]

{ #category : #'tests-Accessing' }
WillowBootstrap3FileMetadataLibraryTest >> testForDevelopment [

	self
		assert: WillowBootstrap3FileMetadataLibrary forDeployment equals: WillowBootstrap3FileMetadataLibrary;
		assert: WillowBootstrap3FileMetadataLibrary forDevelopment equals: WillowBootstrap3FileMetadataLibrary
]

{ #category : #'tests-Accessing' }
WillowBootstrap3FileMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: WillowBootstrap3FileMetadataLibrary isForDevelopment;
		assert: WillowBootstrap3FileMetadataLibrary isForDeployment
]

{ #category : #'tests-Accessing' }
WillowBootstrap3FileMetadataLibraryTest >> testJavascriptContent [

	self
		assert: WillowBootstrap3FileMetadataLibrary default jswillowbootstrapJsContent
		equals:
			'/*<n>* willow-bootstrap.js v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>$.prototype.tooltip.Constructor.prototype.destroy=function(){var that = this
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
WillowBootstrap3FileMetadataLibraryTest >> testVersion [

	self assert: WillowBootstrap3FileMetadataLibrary version equals: WillowBootstrapFileMetadataLibrary default version
]
