"
A BootstrapHamburgerButtonTest is a test class for testing the behavior of BootstrapHamburgerButton
"
Class {
	#name : #BootstrapHamburgerButtonTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #'tests-rendering' }
BootstrapHamburgerButtonTest >> testRenderContentOn [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| targetId |

			targetId := canvas nextId.
			canvas render: (BootstrapHamburgerButton targeting: targetId) ].

	self
		assert: html
		equals: '<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>'
]
