"
I represent a bootstrap-datepicker component
"
Class {
	#name : #Bootstrap3DatePickerWebView,
	#superclass : #WAPainter,
	#instVars : [
		'textField',
		'container'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'Instance Creation' }
Bootstrap3DatePickerWebView class >> wrapping: aTextFieldWebView [

	^ self wrapping: aTextFieldWebView applying: [ :field |  ]
]

{ #category : #'Instance Creation' }
Bootstrap3DatePickerWebView class >> wrapping: aTextFieldWebView applying: aComponentCommand [

	^ self new initializeWrapping: aTextFieldWebView applying: aComponentCommand
]

{ #category : #initialization }
Bootstrap3DatePickerWebView >> initializeWrapping: aTextField applying: aComponentCommand [

	textField := aTextField.
	container := self componentSupplier
		divisionContainerWrapping: [ :canvas | 
			canvas render: self textField.
			canvas div
				with: [ canvas small: ( Bootstrap3IconWebView representing: Glyphicons triangleBottom ) ]
				applying: [ :div | div addClass bootstrap3 inputGroupAddon ]
			]
		applying: [ :div | 
			div addClass bootstrap3 inputGroup + div addClass bootstrap3 date + BootstrapDatepickerCommand new
				+ aComponentCommand
			]
]

{ #category : #initialization }
Bootstrap3DatePickerWebView >> renderContentOn: aCanvas [

	aCanvas render: container
]

{ #category : #accessing }
Bootstrap3DatePickerWebView >> textField [

	^ textField
]
