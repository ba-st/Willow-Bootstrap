Class {
	#name : #WillowBootstrapLiveDocsSession,
	#superclass : #WillowSession,
	#instVars : [
		'application'
	],
	#category : #'Willow-Live-Documentation-Application'
}

{ #category : #navigation }
WillowBootstrapLiveDocsSession >> goToNonPortableComponentsCatalog [

	application goToNonPortableComponentsCatalog
]

{ #category : #navigation }
WillowBootstrapLiveDocsSession >> goToPortableComponentsCatalog [

	application goToPortableComponentsCatalog
]

{ #category : #accessing }
WillowBootstrapLiveDocsSession >> identifiedMainWebView [

	^ application contentView
]

{ #category : #testing }
WillowBootstrapLiveDocsSession >> showingPortableComponents [
	
	^ application showingPortableComponents
]

{ #category : #Controlling }
WillowBootstrapLiveDocsSession >> startUpApplicationContextFor: aWillowApplication [

	super startUpApplicationContextFor: aWillowApplication.
	application := aWillowApplication
]
