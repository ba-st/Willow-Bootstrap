Class {
	#name : #WillowBootstrapApplicationTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Applications'
}

{ #category : #testing }
WillowBootstrapApplicationTest class >> isAbstract [

	^ self name = #WillowBootstrapApplicationTest
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> componentSupplier [

	^ self subclassResponsibility
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> expectedApplicationRendering [

	^ self subclassResponsibility
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> isSession [

	^ true
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> preferenceAt: aSymbol ifAbsent: aBlock [

	^ aBlock value
]

{ #category : #tests }
WillowBootstrapApplicationTest >> testRenderContentOnWithBootstrap [

	| html application |

	application := WillowTestingApplication using: self componentSupplier.
	html := self fullDocumentRendering: application.

	self assert: html equals: self expectedApplicationRendering
]
