"
I'm a JSObject representing a viewport configuration for Bootstrap.
"
Class {
	#name : #Bootstrap3ViewportConfiguration,
	#superclass : #JSObject,
	#instVars : [
		'selector',
		'padding'
	],
	#category : #'Willow-Bootstrap-3-Plugins'
}

{ #category : #initialization }
Bootstrap3ViewportConfiguration >> initialize [

	super initialize.
	selector := 'body'.
	padding := 0
]

{ #category : #printing }
Bootstrap3ViewportConfiguration >> javascriptContentOn: aStream [

	aStream nextPut: ${.
	JSStream encodeKey: 'selector' value: selector on: aStream.
	aStream nextPut: $,.
	JSStream encodeKey: 'padding' value: padding on: aStream.
	aStream nextPut: $}
]

{ #category : #Configuring }
Bootstrap3ViewportConfiguration >> selector: aString padding: aNumber [

	selector := aString.
	padding := aNumber
]
