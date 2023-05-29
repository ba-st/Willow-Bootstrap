"
I'm an asbtract WALibary serving the files in source form
"
Class {
	#name : #Bootstrap4MetadataLibrary,
	#superclass : #WADeploymentAwareFileMetadataLibrary,
	#instVars : [
		'useBundledDependencies'
	],
	#category : #'Willow-Bootstrap-4-Libraries'
}

{ #category : #'instance creation' }
Bootstrap4MetadataLibrary class >> default [

	^ super default initializeUsingBundledDependencies: true
]

{ #category : #Accessing }
Bootstrap4MetadataLibrary class >> forDeployment [

	^ Bootstrap4DeploymentMetadataLibrary
]

{ #category : #Accessing }
Bootstrap4MetadataLibrary class >> forDevelopment [

	^ Bootstrap4DevelopmentMetadataLibrary
]

{ #category : #Accessing }
Bootstrap4MetadataLibrary class >> libraryName [

	^ 'bootstrap'
]

{ #category : #Accessing }
Bootstrap4MetadataLibrary class >> version [

	^ '4.6.2'
]

{ #category : #'instance creation' }
Bootstrap4MetadataLibrary class >> withoutBundledDependencies [

	^ super default initializeUsingBundledDependencies: false
]

{ #category : #initialization }
Bootstrap4MetadataLibrary >> initializeUsingBundledDependencies: aBoolean [
	
	useBundledDependencies := aBoolean 
]
