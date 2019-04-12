"
I'm an abstract class for Bootstrap plugins. I provide support to pass a method call as a function argument.
"
Class {
	#name : #BootstrapPlugin,
	#superclass : #JQPlugin,
	#instVars : [
		'functionName'
	],
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #private }
BootstrapPlugin >> arguments [

	^ functionName ifNil: [ super arguments ] ifNotNil: [ :argument | Array with: argument ]
]

{ #category : #private }
BootstrapPlugin >> lookupCssValue: aSymbolOrFunction [

	^ aSymbolOrFunction isSymbol
		ifTrue: [ self constants >> #css >> aSymbolOrFunction ]
		ifFalse: [ aSymbolOrFunction ]
]

{ #category : #private }
BootstrapPlugin >> lookupValue: aSymbolOrObject [

	^ aSymbolOrObject isSymbol
		ifTrue: [ self constants >> #bootstrap3 >> aSymbolOrObject ]
		ifFalse: [ aSymbolOrObject ]
]

{ #category : #private }
BootstrapPlugin >> optionAt: aKey put: aValue [

	^ super optionAt: (self lookupValue: aKey) put: (self lookupValue: aValue)
]
