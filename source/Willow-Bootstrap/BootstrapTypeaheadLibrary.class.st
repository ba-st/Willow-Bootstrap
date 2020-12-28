"
I'm an abstract library for Bootstrap Typeahead
"
Class {
	#name : #BootstrapTypeaheadLibrary,
	#superclass : #WADeploymentAwareFileMetadataLibrary,
	#category : #'Willow-Bootstrap-Typeahead'
}

{ #category : #Accessing }
BootstrapTypeaheadLibrary class >> forDeployment [

	^ BootstrapTypeaheadDeploymentLibrary
]

{ #category : #Accessing }
BootstrapTypeaheadLibrary class >> forDevelopment [

	^ BootstrapTypeaheadDevelopmentLibrary
]

{ #category : #Accessing }
BootstrapTypeaheadLibrary class >> libraryName [

	^ 'bootstrap-typeahead'
]

{ #category : #versions }
BootstrapTypeaheadLibrary class >> version [

	^ '4.0.2'
]
