"
A BootstrapSelectLibraryTest is a test class for testing the behavior of BootstrapSelectLibrary
"
Class {
	#name : #BootstrapSelectLibraryTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectLibraryTest >> testVersionCompatibility [

	self
		assert: BootstrapSelectDeploymentLibrary version equals: BootstrapSelectDevelopmentLibrary version;
		assert: BootstrapSelectDeploymentLibrary version equals: BootstrapSelectOnlineLibrary default version
]
