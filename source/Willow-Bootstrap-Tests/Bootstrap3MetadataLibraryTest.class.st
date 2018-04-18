"
A Bootstrap3MetadataLibraryTest is a test class for testing the behavior of Bootstrap3MetadataLibrary
"
Class {
	#name : #Bootstrap3MetadataLibraryTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Libraries'
}

{ #category : #tests }
Bootstrap3MetadataLibraryTest >> testForDeployment [

	self assert: Bootstrap3MetadataLibrary forDeployment equals: Bootstrap3DeploymentMetadataLibrary
]

{ #category : #tests }
Bootstrap3MetadataLibraryTest >> testForDevelopment [

	self assert: Bootstrap3MetadataLibrary forDevelopment equals: Bootstrap3DevelopmentMetadataLibrary
]

{ #category : #tests }
Bootstrap3MetadataLibraryTest >> testVersionCompatibility [

	self
		assert: Bootstrap3DeploymentMetadataLibrary version equals: Bootstrap3DevelopmentMetadataLibrary version;
		assert: Bootstrap3DeploymentMetadataLibrary version equals: Bootstrap3OnlineLibrary default version
]
