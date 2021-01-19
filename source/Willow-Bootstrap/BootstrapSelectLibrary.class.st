"
I'm an abstract library for Bootstrap Select
"
Class {
	#name : #BootstrapSelectLibrary,
	#superclass : #WADeploymentAwareFileMetadataLibrary,
	#instVars : [
		'locale'
	],
	#category : #'Willow-Bootstrap-Select'
}

{ #category : #'instance creation' }
BootstrapSelectLibrary class >> default [

	^ super default initializeUsing: (WALocale fromString: 'en-US')
]

{ #category : #Accessing }
BootstrapSelectLibrary class >> forDeployment [

	^ BootstrapSelectDeploymentLibrary
]

{ #category : #Accessing }
BootstrapSelectLibrary class >> forDevelopment [

	^ BootstrapSelectDevelopmentLibrary
]

{ #category : #Accessing }
BootstrapSelectLibrary class >> libraryName [

	^ 'bootstrap-select'
]

{ #category : #'instance creation' }
BootstrapSelectLibrary class >> using: aWALocale [

	^ self new initializeUsing: aWALocale
]

{ #category : #Accessing }
BootstrapSelectLibrary class >> version [

	^'1.13.16'
]

{ #category : #initialization }
BootstrapSelectLibrary >> initializeUsing: aWALocale [

	locale := aWALocale
]
