"
I'm an abstract class for Bootstrap plugins. I provide support to pass a method call as a function argument.
"
Class {
	#name : #BootstrapPlugin,
	#superclass : #JQPlugin,
	#instVars : [
		'functionName'
	],
	#category : 'Willow-Bootstrap-Plugins'
}

{ #category : #private }
BootstrapPlugin >> arguments [

	^ functionName ifNil: [ super arguments ] ifNotNil: [ :argument | Array with: argument ]
]
