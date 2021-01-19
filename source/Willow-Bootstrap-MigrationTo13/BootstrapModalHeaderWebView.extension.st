Extension { #name : #BootstrapModalHeaderWebView }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapModalHeaderWebView >> onCloseTrigger [

	self
		deprecated: 'Use #onClose instead.'
		transformWith: '`@receiver onCloseTrigger' -> '`@receiver onClose'.
	^ self onClose
]
