Class {
	#name : #PrismHighlightingOnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#category : #'Willow-Live-Documentation-Libraries'
}

{ #category : #Updating }
PrismHighlightingOnlineLibrary >> updateRoot: aRoot [

	aRoot script url: 'https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/prism.min.js'.
	aRoot script
		url: 'https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/components/prism-smalltalk.min.js'.
	aRoot script
		url: 'https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/components/prism-javascript.min.js'.
	aRoot stylesheet url: 'https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism.min.css'
]

{ #category : #Accessing }
PrismHighlightingOnlineLibrary >> version [

	^ '1.20.0'
]
