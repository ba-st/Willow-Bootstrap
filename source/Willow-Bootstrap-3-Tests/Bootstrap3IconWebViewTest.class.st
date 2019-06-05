"
A BootstrapIconTest is a test class for testing the behavior of BootstrapIconWebView
"
Class {
	#name : #Bootstrap3IconWebViewTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #tests }
Bootstrap3IconWebViewTest >> testRenderContentOn [

	| icon html |

	icon := Bootstrap3IconWebView representing: Glyphicons menuUp.

	html := self render: icon.

	self assert: html equals: '<span class="glyphicon glyphicon-menu-up"></span>'
]

{ #category : #tests }
Bootstrap3IconWebViewTest >> testRepresentingApplying [

	| icon html |

	icon := Bootstrap3IconWebView representing: Glyphicons menuUp applying: [ :span :constants | span setData: constants >> #bootstrap >> #dismiss to: true ].

	html := self render: icon.

	self assert: html equals: '<span class="glyphicon glyphicon-menu-up" data-dismiss></span>'
]
