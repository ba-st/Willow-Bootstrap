"
A BootstrapModalFooterTest is a test class for testing the behavior of BootstrapModalFooterWebView
"
Class {
	#name : #BootstrapModalFooterWebViewTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #private }
BootstrapModalFooterWebViewTest >> acceptButton [

	^ AsynchronicButtonWebView
		labeled: 'Accept'
		applying: [ :button | button addClass bootstrapCommon button + button addClass bootstrapCommon buttonPrimary ]
]

{ #category : #'tests-Configuring' }
BootstrapModalFooterWebViewTest >> testOnCloseTrigger [

	| footer html |

	footer := BootstrapModalFooterWebView
		with: self acceptButton
		andCloseButtonLabeled: 'Close'
		applyingToIt: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].

	footer onClose disable.

	html := self render: footer.

	self
		assert: html
		equals:
			'<div class="modal-footer"><button id="button-id1" class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id2" class="btn btn-primary" type="button">Accept</button></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapModalFooterWebViewTest >> testOnTrigger [

	| footer html |

	footer := BootstrapModalFooterWebView
		with: self acceptButton
		andCloseButtonLabeled: 'Close'
		applyingToIt: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].

	footer on trigger disable.

	html := self render: footer.

	self
		assert: html
		equals:
			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id1" class="btn btn-primary" type="button">Accept</button></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapModalFooterWebViewTest >> testRenderContentOn [

	| footer html |

	footer := BootstrapModalFooterWebView
		withCloseButtonLabeled: 'Close'
		applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].

	html := self render: footer.

	self
		assert: html
		equals:
			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button></div>'
]

{ #category : #tests }
BootstrapModalFooterWebViewTest >> testRenderContentOnWithAdditionalButtons [

	| footer html |

	footer := BootstrapModalFooterWebView
		with: self acceptButton
		andCloseButtonLabeled: 'Close'
		applyingToIt: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].

	html := self render: footer.

	self
		assert: html
		equals:
			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id1" class="btn btn-primary" type="button">Accept</button></div>'
]
