Extension { #name : #BootstrapDismissButton }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapDismissButton >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
