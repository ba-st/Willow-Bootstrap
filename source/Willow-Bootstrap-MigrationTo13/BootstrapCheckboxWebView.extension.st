Extension { #name : #BootstrapCheckboxWebView }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapCheckboxWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
