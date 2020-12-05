"
I'm an abstract library for Bootstrap Datepicker
"
Class {
	#name : #BootstrapDatepickerLibrary,
	#superclass : #WADeploymentAwareFileMetadataLibrary,
	#instVars : [
		'locale'
	],
	#category : #'Willow-Bootstrap-Datepicker'
}

{ #category : #'instance creation' }
BootstrapDatepickerLibrary class >> default [

	^ super default initializeUsing: (WALocale fromString: 'en')
]

{ #category : #Accessing }
BootstrapDatepickerLibrary class >> forDeployment [

	^ BootstrapDatepickerDeploymentLibrary 
]

{ #category : #Accessing }
BootstrapDatepickerLibrary class >> forDevelopment [

	^ BootstrapDatepickerDevelopmentLibrary
]

{ #category : #Accessing }
BootstrapDatepickerLibrary class >> libraryName [

	^ 'bootstrap-datepicker'
]

{ #category : #'instance creation' }
BootstrapDatepickerLibrary class >> using: aWALocale [

	^ self new initializeUsing: aWALocale
]

{ #category : #Accessing }
BootstrapDatepickerLibrary class >> version [

	^ '1.9.0'
]

{ #category : #initialization }
BootstrapDatepickerLibrary >> initializeUsing: aWALocale [

	locale := aWALocale
]
