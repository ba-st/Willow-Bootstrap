Class {
	#name : #BootstrapViewportConfiguration,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #deprecation }
BootstrapViewportConfiguration class >> isDeprecated [

	^ true
]

{ #category : #'instance creation' }
BootstrapViewportConfiguration class >> new [

	self
		deprecated: 'Use Bootstrap3ViewportConfiguration now'
		transformWith: 'BootstrapViewportConfiguration new' -> 'Bootstrap3ViewportConfiguration new'.
	^ Bootstrap3ViewportConfiguration new
]
