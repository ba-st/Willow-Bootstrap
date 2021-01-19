Extension { #name : #BootstrapRadioWebView }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapRadioWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
