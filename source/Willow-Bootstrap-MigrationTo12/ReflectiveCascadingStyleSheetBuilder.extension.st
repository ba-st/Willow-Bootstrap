Extension { #name : #ReflectiveCascadingStyleSheetBuilder }

{ #category : #'*Willow-Bootstrap-MigrationTo12' }
ReflectiveCascadingStyleSheetBuilder >> bootstrap [

	self deprecated: 'Use bootstrap3' transformWith: '`@receiver bootstrap' -> '`@receiver bootstrap3'.

	^ self bootstrap3
]
