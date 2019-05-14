"
A BootstrapIconTest is a test class for testing the behavior of BootstrapIconWebView
"
Class {
	#name : #BootstrapIconWebViewTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #tests }
BootstrapIconWebViewTest >> testRenderContentOn [

	| icon html |

	icon := BootstrapIconWebView representing: Glyphicons menuUp.

	html := self render: icon.

	self assert: html equals: '<span class="glyphicon glyphicon-menu-up"></span>'
]

{ #category : #tests }
BootstrapIconWebViewTest >> testRepresentingApplying [

	| icon html |

	icon := BootstrapIconWebView representing: Glyphicons menuUp applying: [ :span :constants | span setData: constants >> #bootstrap3 >> #dismiss to: true ].

	html := self render: icon.

	self assert: html equals: '<span class="glyphicon glyphicon-menu-up" data-dismiss></span>'
]
