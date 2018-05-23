"
A BootstrapSelfCleaningModalCommandTest is a test class for testing the behavior of BootstrapSelfCleaningModalCommand
"
Class {
	#name : #BootstrapSelfCleaningModalCommandTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #tests }
BootstrapSelfCleaningModalCommandTest >> testApplyToOn [

	| html |

	html := self apply: BootstrapSelfCleaningModalCommand new toComponentDefinedBy: [ :canvas | canvas div class: Willow classes >> #bootstrap >>#modal ].

	self
		assert: html
		equals:
			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'
]
