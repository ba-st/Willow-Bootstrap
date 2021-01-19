Extension { #name : #BootstrapModalFooterWebView }

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapModalFooterWebView >> onCloseTrigger [

	self
		deprecated: 'Use #onClose instead.'
		transformWith: '`@receiver onCloseTrigger' -> '`@receiver onClose'.
	^ self onClose
]

{ #category : #'*Willow-Bootstrap-MigrationTo13' }
BootstrapModalFooterWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
