"
I'm a JSObject representing a viewport configuration for Bootstrap.
"
Class {
	#name : 'Bootstrap3ViewportConfiguration',
	#superclass : 'JSObject',
	#instVars : [
		'selector',
		'padding'
	],
	#category : 'Willow-Bootstrap-3-Plugins',
	#package : 'Willow-Bootstrap-3',
	#tag : 'Plugins'
}

{ #category : 'initialization' }
Bootstrap3ViewportConfiguration >> initialize [

	super initialize.
	selector := 'body'.
	padding := 0
]

{ #category : 'printing' }
Bootstrap3ViewportConfiguration >> javascriptContentOn: jsCanvas [

  jsCanvas object: [
      jsCanvas
        key: 'selector' value: selector;
        key: 'padding' value: padding
    ]
]

{ #category : 'Configuring' }
Bootstrap3ViewportConfiguration >> selector: aString padding: aNumber [

	selector := aString.
	padding := aNumber
]
