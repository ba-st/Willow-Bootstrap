"
A BootstrapDatepickerLibraryTest is a test class for testing the behavior of BootstrapDatepickerLibrary
"
Class {
	#name : 'BootstrapDatepickerLibraryTest',
	#superclass : 'TestCase',
	#category : 'Willow-Bootstrap-Tests-Datepicker',
	#package : 'Willow-Bootstrap-Tests',
	#tag : 'Datepicker'
}

{ #category : 'tests' }
BootstrapDatepickerLibraryTest >> testVersionCompatibility [

	self
		assert: BootstrapDatepickerDeploymentLibrary version equals: BootstrapDatepickerDevelopmentLibrary version;
		assert: BootstrapDatepickerDeploymentLibrary version equals: BootstrapDatepickerOnlineLibrary default version
]
