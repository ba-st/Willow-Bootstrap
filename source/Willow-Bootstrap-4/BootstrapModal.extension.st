Extension { #name : #BootstrapModal }

{ #category : #'*Willow-Bootstrap-4' }
BootstrapModal >> dispose [

	"Destroys an element’s modal."

	functionName := 'dispose'
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapModal >> focus: aBoolean [

	"Puts the focus on the modal when initialized."

	self optionAt: #focus put: aBoolean
]
