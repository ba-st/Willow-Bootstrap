Class {
	#name : #BootstrapLabeledWebView,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #deprecation }
BootstrapLabeledWebView class >> applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	self
		deprecated: 'Use the componentSupplier facilites'
		transformWith:
			'BootstrapLabeledWebView applying: `@aCommandToContainer displaying: `@thePhrasingContent applying: `@aCommandToLabel boundTo: `@aFieldWebView applying: `@aCommandToField'
				->
					'self componentSupplier
		labeledFieldApplying: `@aCommandToContainer
		displaying: `@thePhrasingContent
		applying: `@aCommandToLabel
		boundTo: `@aFieldWebView
		applying: `@aCommandToField'.

	^ aFieldWebView componentSupplier
		labeledFieldApplying: aCommandToContainer
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField
]

{ #category : #deprecation }
BootstrapLabeledWebView class >> displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	self
		deprecated: 'Use the componentSupplier facilites'
		transformWith:
			'BootstrapLabeledWebView displaying: `@thePhrasingContent applying: `@aCommandToLabel boundTo: `@aFieldWebView applying: `@aCommandToField'
				->
					'self componentSupplier
		labeledFieldApplying: [  ]
		displaying: `@thePhrasingContent
		applying: `@aCommandToLabel
		boundTo: `@aFieldWebView
		applying: `@aCommandToField'.

	^ aFieldWebView componentSupplier
		labeledFieldApplying: [  ]
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField
]

{ #category : #deprecation }
BootstrapLabeledWebView class >> isDeprecated [

	^ true
]
