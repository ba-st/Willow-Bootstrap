"
A BootstrapDialogClosingCommandTest is a test class for testing the behavior of DialogClosingCommand using the Bootstrap Component Supplier
"
Class {
	#name : #BootstrapDialogClosingCommandTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-WebInteraction'
}

{ #category : #testing }
BootstrapDialogClosingCommandTest class >> isAbstract [ 

	^self name = #BootstrapDialogClosingCommandTest
]

{ #category : #accessing }
BootstrapDialogClosingCommandTest >> componentSupplier [

	^ self subclassResponsibility
]

{ #category : #accessing }
BootstrapDialogClosingCommandTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
BootstrapDialogClosingCommandTest >> isSession [

	^ true
]

{ #category : #tests }
BootstrapDialogClosingCommandTest >> testModelLoadingActionsWhenOnlyRemovingLastDialog [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| script anchor |

			script := canvas javascript.
			anchor := canvas anchor.
			canvas ensureIdFor: anchor.
			DialogClosingCommand onlyForLastDialog modelLoadingInstructions appendTo: script on: canvas.
			anchor script: ( canvas jQuery this onClick: script )
			].

	self
		assert: html
		equals:
			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").children("div").last().modal("hide")});</script>'
]

{ #category : #tests }
BootstrapDialogClosingCommandTest >> testModelLoadingActionsWhenRemovingAllDialogs [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| script anchor |

			script := canvas javascript.
			anchor := canvas anchor.
			canvas ensureIdFor: anchor.
			DialogClosingCommand forAllDialogs modelLoadingInstructions appendTo: script on: canvas.
			anchor script: ( canvas jQuery this onClick: script )
			].

	self
		assert: html
		equals:
			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").children("div").modal("hide")});</script>'
]
