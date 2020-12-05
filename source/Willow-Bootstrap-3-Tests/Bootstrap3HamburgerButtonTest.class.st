"
A BootstrapHamburgerButtonTest is a test class for testing the behavior of BootstrapHamburgerButton
"
Class {
	#name : #Bootstrap3HamburgerButtonTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #'tests-rendering' }
Bootstrap3HamburgerButtonTest >> testRenderContentOn [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| targetId |

			targetId := canvas nextId.
			canvas render: (Bootstrap3HamburgerButton targeting: targetId) ].

	self
		assert: html
		equals: '<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>'
]
