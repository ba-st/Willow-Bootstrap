Extension { #name : #BootstrapSplitButtonWebView }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapSplitButtonWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
