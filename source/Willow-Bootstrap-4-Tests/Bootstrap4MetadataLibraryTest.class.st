"
A Bootstrap4MetadataLibraryTest is a test class for testing the behavior of Bootstrap4MetadataLibrary
"
Class {
	#name : #Bootstrap4MetadataLibraryTest,
	#superclass : #TestCase,
	#category : #'Willow-Bootstrap-4-Tests-Libraries'
}

{ #category : #tests }
Bootstrap4MetadataLibraryTest >> testVersionCompatibility [

	self
		assert: Bootstrap4DeploymentMetadataLibrary version
			equals: Bootstrap4DevelopmentMetadataLibrary version;
		assert: Bootstrap4DeploymentMetadataLibrary version
			equals: Bootstrap4OnlineLibrary default version
]
