"
A WillowBootstrapFileMetadataLibraryTest is a test class for testing the behavior of WillowBootstrapFileMetadataLibrary
"
Class {
	#name : #WillowBootstrapFileMetadataLibraryTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Libraries'
}

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testCssContent [

	self
		assert: WillowBootstrapFileMetadataLibrary default csswillowbootstrapCssContent
		equals:
			'/*<n>* willow-bootstrap.css v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>input[type="number"]::-webkit-outer-spin-button ,<n>input[type="number"]::-webkit-inner-spin-button<n>{<n><t>-webkit-appearance: none;<n>}<n><n>input[type="number"]<n>{<n><t>-moz-appearance: textfield;<n>}'
				expandMacros

]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: WillowBootstrapFileMetadataLibrary default
		createsAsFolders: #('willow-bootstrap-8.0.0' 'willow-bootstrap-8.0.0/css' 'willow-bootstrap-8.0.0/js')
		andFileContentsMatching:
			{('willow-bootstrap-8.0.0/css/willow-bootstrap.css' -> 'ac56a8ae26202553d89bd1246e6631e7440fda84').
			('willow-bootstrap-8.0.0/js/willow-bootstrap.js' -> '92bbb3f8ff706f6742b28e2791151e2184ebcd4e')}
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
			'/*<n>* willow-bootstrap.js v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'
				expandMacros

]

{ #category : #'tests-Accessing' }
WillowBootstrapFileMetadataLibraryTest >> testVersion [

	self assert: WillowBootstrapFileMetadataLibrary version equals: WillowBootstrapFileMetadataLibrary default version
]
