"
I have the responsibility to provide Bootstrap 4 components. 
"
Class {
	#name : #Bootstrap4ComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#instVars : [
		'bootstrapLibraries'
	],
	#category : #'Willow-Bootstrap-4-Frontend'
}

{ #category : #Processing }
Bootstrap4ComponentSupplier >> updateRoot: aRoot [

	aRoot beHtml5.
	aRoot meta
		charset: 'utf-8'.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0, shrink-to-fit=no'.
	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].
"	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot"
]
