"
I have the responsibility to provide Bootstrap 4 components. 
"
Class {
	#name : #Bootstrap4ComponentSupplier,
	#superclass : #BootstrapComponentSupplier,
	#instVars : [
		'bootstrapLibraries'
	],
	#category : #'Willow-Bootstrap-4-Frontend'
}

{ #category : #'Instance Creation' }
Bootstrap4ComponentSupplier class >> online [

	^ self
		usingLibraries:
			{Bootstrap4OnlineLibrary default.
			BootstrapSelectOnlineLibrary default.
			BootstrapDatepickerOnlineLibrary default.
			BootstrapTypeaheadOnlineLibrary default}
]

{ #category : #'private - Instance Creation' }
Bootstrap4ComponentSupplier class >> usingLibraries: aLibraryCollection [

	^ self new initializeUsing: aLibraryCollection
]

{ #category : #initialization }
Bootstrap4ComponentSupplier >> initializeUsing: aLibraryCollection [

	bootstrapLibraries := aLibraryCollection
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> singleButtonDropdownBuilder [

	^ Bootstrap4SingleButtonDropdownBuilder using: self
]

{ #category : #Supplying }
Bootstrap4ComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		apply: [ :table | table addClass bootstrap4 table ];
		yourself
]

{ #category : #Processing }
Bootstrap4ComponentSupplier >> updateRoot: aRoot [

	super updateRoot: aRoot.
	aRoot meta charset: 'utf-8'.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0, shrink-to-fit=no'.
	bootstrapLibraries do: [ :library | library updateRoot: aRoot ]	"	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot"
]
