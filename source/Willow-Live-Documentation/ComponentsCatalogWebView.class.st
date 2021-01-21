Class {
	#name : #ComponentsCatalogWebView,
	#superclass : #WAPainter,
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #testing }
ComponentsCatalogWebView class >> canHandle: aComponentSupplier [

	self subclassResponsibility
]

{ #category : #'instance creation' }
ComponentsCatalogWebView class >> nonPortableComponentsViewFor: aComponentSupplier [

	^ self subclasses
		detect: [ :view | view canHandle: aComponentSupplier ]
		ifFound: [ :view | view new ]
		ifNone: [ [ :canvas |  ] ]
]

{ #category : #initialization }
ComponentsCatalogWebView >> initialize [

	self initializeExamples
]

{ #category : #initialization }
ComponentsCatalogWebView >> initializeExamples [

	self subclassResponsibility 
]
