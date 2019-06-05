Class {
	#name : #BootstrapDatePickerWebView,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #deprecation }
BootstrapDatePickerWebView class >> isDeprecated [

	^ true
]

{ #category : #deprecation }
BootstrapDatePickerWebView class >> wrapping: aTextFieldWebView [

	self
		deprecated: 'User Bootstrap3DatePickerWebView'
		transformWith:
			'BootstrapDatePickerWebView wrapping: `@aTextFieldWebView'
				-> 'Bootstrap3DatePickerWebView wrapping: `@aTextFieldWebView'.
	^ Bootstrap3DatePickerWebView wrapping: aTextFieldWebView
]

{ #category : #deprecation }
BootstrapDatePickerWebView class >> wrapping: aTextFieldWebView applying: aComponentCommand [

	self
		deprecated: 'User Bootstrap3DatePickerWebView'
		transformWith:
			'BootstrapDatePickerWebView wrapping: `@aTextFieldWebView applying: `@aComponentCommand'
				-> 'Bootstrap3DatePickerWebView wrapping: `@aTextFieldWebView applying: `@aComponentCommand'.
	^ Bootstrap3DatePickerWebView wrapping: aTextFieldWebView applying: aComponentCommand
]
