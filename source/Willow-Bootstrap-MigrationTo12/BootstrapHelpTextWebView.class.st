Class {
	#name : #BootstrapHelpTextWebView,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #'Instance Creation' }
BootstrapHelpTextWebView class >> boundTo: aFieldWebView describedBy: aHelpText [

	self
		deprecated: 'User the componentSupplier protocol'
		transformWith:
			'BootstrapHelpTextWebView boundTo: `@aFieldWebView describedBy: `@aHelpText'
				-> 'self componentSupplier helpTextBoundTo: `@aFieldWebView describedBy: `@aHelpText'.

	^ aFieldWebView componentSupplier boundTo: aFieldWebView describedBy: aHelpText
]

{ #category : #deprecation }
BootstrapHelpTextWebView class >> isDeprecated [

	^ true
]
