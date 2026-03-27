"
I'm an abstract class for Bootstrap plugins. I provide support to pass a method call as a function argument.
"
Class {
	#name : 'BootstrapPlugin',
	#superclass : 'JQPlugin',
	#instVars : [
		'functionName'
	],
	#category : 'Willow-Bootstrap-Plugins',
	#package : 'Willow-Bootstrap',
	#tag : 'Plugins'
}

{ #category : 'private' }
BootstrapPlugin >> argumentsDo: aBlock [

  functionName ifNil: [ super argumentsDo: aBlock ] ifNotNil: aBlock
]

{ #category : 'private' }
BootstrapPlugin >> lookupCssValue: aSymbolOrFunction [

	^ aSymbolOrFunction isSymbol
		then: [ self constants >> #css >> aSymbolOrFunction ]
		otherwise: [ aSymbolOrFunction ]
]

{ #category : 'private' }
BootstrapPlugin >> lookupValue: aSymbolOrObject [

	^ aSymbolOrObject isSymbol
		then: [ self constants >> #bootstrap >> aSymbolOrObject ]
		otherwise: [ aSymbolOrObject ]
]

{ #category : 'private' }
BootstrapPlugin >> optionAt: aKey put: aValue [

	^ super optionAt: (self lookupValue: aKey) put: (self lookupValue: aValue)
]
