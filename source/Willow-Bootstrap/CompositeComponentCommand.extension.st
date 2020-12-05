Extension { #name : #CompositeComponentCommand }

{ #category : #'*Willow-Bootstrap' }
CompositeComponentCommand >> isNullCommand [

	^ commands isEmpty or: [ commands allSatisfy: [ :command | command isNullCommand ] ]
]
