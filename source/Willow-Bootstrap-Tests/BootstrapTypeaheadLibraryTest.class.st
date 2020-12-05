"
A BootstrapTypeaheadLibraryTest is a test class for testing the behavior of BootstrapTypeaheadLibrary
"
Class {
	#name : #BootstrapTypeaheadLibraryTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Typeahead'
}

{ #category : #tests }
BootstrapTypeaheadLibraryTest >> testVersionCompatibility [

	self
		assert: BootstrapTypeaheadDeploymentLibrary version equals: BootstrapTypeaheadDevelopmentLibrary version;
		assert: BootstrapTypeaheadDeploymentLibrary version equals: BootstrapTypeaheadOnlineLibrary default version
]
