"
Custom formatting options

    toDisplay: function (date, format, language) to convert date object to string, that will be stored in input field
    toValue: function (date, format, language) to convert string object to date, that will be used in date selection

"
Class {
	#name : #BootstrapDatepickerFormat,
	#superclass : #JSObject,
	#instVars : [
		'options'
	],
	#category : 'Willow-Bootstrap-Datepicker'
}

{ #category : #'Instance Creation' }
BootstrapDatepickerFormat class >> formattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction [

	^ self new initializeFormattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction
]

{ #category : #initialization }
BootstrapDatepickerFormat >> initializeFormattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction [

	options := GRSmallDictionary new.
	options
		at: 'toDisplay' put: aJSFormattingFunction;
		at: 'toValue' put: aJSParsingFunction
]

{ #category : #printing }
BootstrapDatepickerFormat >> javascriptContentOn: aStream [

	aStream javascript: options
]
