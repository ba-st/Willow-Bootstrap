Class {
	#name : #Bootstrap4CardLayoutBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'supplier',
		'cards',
		'layoutCommandBinding'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #'instance creation' }
Bootstrap4CardLayoutBuilder class >> using: aComponentSupplier [

	^ self new initializeUsing: aComponentSupplier
]

{ #category : #Configuring }
Bootstrap4CardLayoutBuilder >> addCard: aCardBuildingBlock [

	self addCard: aCardBuildingBlock applying: [  ]
]

{ #category : #Configuring }
Bootstrap4CardLayoutBuilder >> addCard: aCardBuildingBlock applying: aCommandToCard [

	| builder |

	builder := supplier cardBuilder.
	aCardBuildingBlock value: builder.
	cards add: ( builder buildApplying: aCommandToCard )
]

{ #category : #building }
Bootstrap4CardLayoutBuilder >> buildApplying: aCommand [

	^ supplier divisionContainerWrapping: cards applying: self layoutCommand + aCommand
]

{ #category : #initialization }
Bootstrap4CardLayoutBuilder >> initializeUsing: aComponentSupplier [

	supplier := aComponentSupplier.
	cards := OrderedCollection new.
	layoutCommandBinding := Binding undefinedExplainedBy: 'Missing layout configuration'
]

{ #category : #private }
Bootstrap4CardLayoutBuilder >> layoutCommand [

	^ layoutCommandBinding content asWebComponentCommand
]

{ #category : #Configuring }
Bootstrap4CardLayoutBuilder >> useColumnLayout [

	layoutCommandBinding := Binding to: [ :div | div addClass bootstrap4 cardColumns ]
]

{ #category : #Configuring }
Bootstrap4CardLayoutBuilder >> useDeckLayout [

	layoutCommandBinding := Binding to: [ :div | div addClass bootstrap4 cardDeck ]
]

{ #category : #Configuring }
Bootstrap4CardLayoutBuilder >> useGroupLayout [

	layoutCommandBinding := Binding to: [ :div | div addClass bootstrap4 cardGroup ]
]
