"
I'm a Delay configuration
"
Class {
	#name : #BootstrapDelayConfiguration,
	#superclass : #JSObject,
	#instVars : [
		'millisecondCountToShow',
		'millisecondCountToHide'
	],
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #initialization }
BootstrapDelayConfiguration >> initialize [

	super initialize.
	millisecondCountToHide := 0.
	millisecondCountToShow := 0
]

{ #category : #printing }
BootstrapDelayConfiguration >> javascriptContentOn: aStream [

	aStream nextPut: ${.
	JSStream encodeKey: 'show' value: millisecondCountToShow on: aStream.
	aStream nextPut: $,.
	JSStream encodeKey: 'hide' value: millisecondCountToHide on: aStream.
	aStream nextPut: $}
]

{ #category : #Configuring }
BootstrapDelayConfiguration >> show: theMillisecondCountToShow hide: theMillisecondCountToHide [

	millisecondCountToShow := theMillisecondCountToShow.
	millisecondCountToHide := theMillisecondCountToHide
]
