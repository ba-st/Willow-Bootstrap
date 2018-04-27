"
I represent a bootstrap-datepicker component
"
Class {
	#name : #BootstrapDatePickerWebView,
	#superclass : #WAPainter,
	#instVars : [
		'textField',
		'container'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapDatePickerWebView class >> wrapping: aTextFieldWebView [

	^ self wrapping: aTextFieldWebView applying: [ :field |  ]
]

{ #category : #'Instance Creation' }
BootstrapDatePickerWebView class >> wrapping: aTextFieldWebView applying: aComponentCommand [

	^ self new initializeWrapping: aTextFieldWebView applying: aComponentCommand
]

{ #category : #initialization }
BootstrapDatePickerWebView >> initializeWrapping: aTextField applying: aComponentCommand [

	textField := aTextField.
	container := GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: self textField.
			canvas div
				class: BootstrapCssStyles inputGroupAddon;
				with: [ canvas small: (BootstrapIconWebView representing: Glyphicons triangleBottom) ] ]
		applying: [ :div | div addClass bootstrap inputGroup + div addClass bootstrap date + BootstrapDatepickerCommand new + aComponentCommand ]
]

{ #category : #initialization }
BootstrapDatePickerWebView >> renderContentOn: aCanvas [

	aCanvas render: container
]

{ #category : #accessing }
BootstrapDatePickerWebView >> textField [

	^ textField
]
