"
A BootstrapModalHeaderTest is a test class for testing the behavior of BootstrapModalHeaderWebView
"
Class {
	#name : #BootstrapModalHeaderWebViewTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #tests }
BootstrapModalHeaderWebViewTest >> testOnCloseTriggerDoesNothingIfNotDismissable [

	| header html |

	header := BootstrapModalHeaderWebView titled: 'Welcome!'.
	header onClose disable.
	html := self render: header.

	self assert: html equals: '<div class="modal-header"><h4 class="modal-title">Welcome!</h4></div>'
]

{ #category : #tests }
BootstrapModalHeaderWebViewTest >> testOnCloseTriggerWhenDismissable [

	| header html |

	header := BootstrapModalHeaderWebView dismissableTitled: 'Welcome!'.
	header onClose disable.
	html := self render: header.

	self
		assert: html
		equals:
			'<div class="modal-header"><button id="button-id1" class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Welcome!</h4></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapModalHeaderWebViewTest >> testRenderContentOn [

	| header html |

	header := BootstrapModalHeaderWebView titled: 'Welcome!'.
	html := self render: header.

	self assert: html equals: '<div class="modal-header"><h4 class="modal-title">Welcome!</h4></div>'
]

{ #category : #tests }
BootstrapModalHeaderWebViewTest >> testRenderContentOnWithDismissButton [

	| header html |

	header := BootstrapModalHeaderWebView dismissableTitled: 'Welcome!'.
	html := self render: header.

	self
		assert: html
		equals:
			'<div class="modal-header"><button class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Welcome!</h4></div>'
]
