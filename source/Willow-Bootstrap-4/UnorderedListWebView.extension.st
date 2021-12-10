Extension { #name : #UnorderedListWebView }

{ #category : #'*Willow-Bootstrap-4' }
UnorderedListWebView >> embeddedInCard [

	commandToList := commandToList + [ :list | list addClass bootstrap4 listGroupFlush ]
]
