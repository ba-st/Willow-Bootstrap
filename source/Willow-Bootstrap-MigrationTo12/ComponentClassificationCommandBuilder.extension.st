Extension { #name : #ComponentClassificationCommandBuilder }

{ #category : #'*Willow-Bootstrap-MigrationTo12' }
ComponentClassificationCommandBuilder >> bootstrap [

	self deprecated: 'Use bootstrap3' transformWith: '`@receiver bootstrap' -> '`@receiver bootstrap3'.

	self bootstrap3
]
