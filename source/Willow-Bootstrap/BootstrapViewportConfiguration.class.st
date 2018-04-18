"
I'm a JSObject representing a viewport configuration for Bootstrap.
"
Class {
	#name : #BootstrapViewportConfiguration,
	#superclass : #JSObject,
	#instVars : [
		'selector',
		'padding'
	],
	#category : 'Willow-Bootstrap-Plugins'
}

{ #category : #initialization }
BootstrapViewportConfiguration >> initialize [

	super initialize.
	selector := 'body'.
	padding := 0
]

{ #category : #printing }
BootstrapViewportConfiguration >> javascriptContentOn: aStream [

	aStream nextPut: ${.
	JSStream encodeKey: 'selector' value: selector on: aStream.
	aStream nextPut: $,.
	JSStream encodeKey: 'padding' value: padding on: aStream.
	aStream nextPut: $}
]

{ #category : #Configuring }
BootstrapViewportConfiguration >> selector: aString padding: aNumber [

	selector := aString.
	padding := aNumber
]
