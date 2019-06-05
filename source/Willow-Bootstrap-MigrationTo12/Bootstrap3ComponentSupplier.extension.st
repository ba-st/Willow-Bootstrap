Extension { #name : #Bootstrap3ComponentSupplier }

{ #category : #'*Willow-Bootstrap-MigrationTo12' }
Bootstrap3ComponentSupplier >> inputGroupAddOnWrapping: aRenderable [

	self deprecated: 'Use fieldAddonBuilder'.
	^ PhrasingContainerWebView
		wrapping: aRenderable
		applying: [ :container | container addClass bootstrap3 inputGroupAddon ]
]

{ #category : #'*Willow-Bootstrap-MigrationTo12' }
Bootstrap3ComponentSupplier >> inputGroupButtonWrapping: aRenderable [

	self deprecated: 'Use fieldAddonBuilder'.
	^ PhrasingContainerWebView
		wrapping: aRenderable
		applying: [ :container | container addClass bootstrap3 inputGroupButton ]
]
