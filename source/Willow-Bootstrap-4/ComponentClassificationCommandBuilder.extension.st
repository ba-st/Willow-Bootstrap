Extension { #name : #ComponentClassificationCommandBuilder }

{ #category : #'*Willow-Bootstrap-4' }
ComponentClassificationCommandBuilder >> alertDark [

	^ self commandStyledWith: #alertDark
]

{ #category : #'*Willow-Bootstrap-4' }
ComponentClassificationCommandBuilder >> alertHeading [

	^ self commandStyledWith: #alertHeading
]

{ #category : #'*Willow-Bootstrap-4' }
ComponentClassificationCommandBuilder >> alertLight [

	^ self commandStyledWith: #alertLight
]

{ #category : #'*Willow-Bootstrap-4' }
ComponentClassificationCommandBuilder >> alertPrimary [

	^ self commandStyledWith: #alertPrimary
]

{ #category : #'*Willow-Bootstrap-4' }
ComponentClassificationCommandBuilder >> alertSecondary [

	^ self commandStyledWith: #alertSecondary
]

{ #category : #'*Willow-Bootstrap-4' }
ComponentClassificationCommandBuilder >> bootstrap4 [

	classificationNamespace := classificationNamespace >> #bootstrap4
]
