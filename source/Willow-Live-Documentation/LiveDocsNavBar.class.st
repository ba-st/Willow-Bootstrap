Class {
	#name : #LiveDocsNavBar,
	#superclass : #WAPainter,
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #'instance creation' }
LiveDocsNavBar class >> canHandle: aComponentSupplier [

	self subclassResponsibility
]

{ #category : #'instance creation' }
LiveDocsNavBar class >> suitableFor: aComponentSupplier [

	^ self subclasses
		detect: [ :view | view canHandle: aComponentSupplier ]
		ifFound: [ :view | view new ]
		ifNone: [ self halt ]
]

{ #category : #accessing }
LiveDocsNavBar >> willowBootstrapLogoView [

	^ ImageWebView
		locatedAt: 'https://raw.githubusercontent.com/ba-st/Willow-Bootstrap/release-candidate/assets/logos/32x32.png'
		applying: [  ]
]
