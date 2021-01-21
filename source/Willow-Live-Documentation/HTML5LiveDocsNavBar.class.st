Class {
	#name : #HTML5LiveDocsNavBar,
	#superclass : #LiveDocsNavBar,
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #'instance creation' }
HTML5LiveDocsNavBar class >> canHandle: aComponentSupplier [

	^ aComponentSupplier isA: Html5ComponentSupplier
]

{ #category : #rendering }
HTML5LiveDocsNavBar >> renderContentOn: aCanvas [

	aCanvas navigation
		with:
			( self componentSupplier asynchronicLinkLabeled: self willowBootstrapLogoView applying: [ :link |  ] )
]
