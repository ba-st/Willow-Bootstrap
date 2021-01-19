Extension { #name : #BootstrapModalWebView }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapModalWebView >> onCloseTrigger [

	self
		deprecated: 'Use #onClose instead.'
		transformWith: '`@receiver onCloseTrigger' -> '`@receiver onClose'.
	^ self onClose
]

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapModalWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
