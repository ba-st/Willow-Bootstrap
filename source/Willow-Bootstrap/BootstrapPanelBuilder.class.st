"
I'm an abstract class declaring the configuration options for panels. 
"
Class {
	#name : #BootstrapPanelBuilder,
	#superclass : #WillowComponentBuilder,
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #testing }
BootstrapPanelBuilder class >> isAbstract [

	^ self name = #BootstrapPanelBuilder
]

{ #category : #Configuring }
BootstrapPanelBuilder >> footer: aRenderable [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapPanelBuilder >> headingDisplaying: aRenderable [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapPanelBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapPanelBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapPanelBuilder >> withListGroup: aListWebView [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapPanelBuilder >> withTable: aTableWebView [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapPanelBuilder >> wrapping: theBodyContent [

	self subclassResponsibility
]
