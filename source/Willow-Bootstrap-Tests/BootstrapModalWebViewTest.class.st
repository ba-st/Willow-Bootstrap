"
A BootstrapModalWebViewTest is a test class for testing the behavior of BootstrapModalWebView
"
Class {
	#name : #BootstrapModalWebViewTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #private }
BootstrapModalWebViewTest >> agreeButton [

	^ AsynchronicButtonWebView
		labeled: 'Agree'
		applying:
			[ :button | button addClass bootstrapCommon button + button addClass bootstrapCommon buttonSuccess ]
]

{ #category : #private }
BootstrapModalWebViewTest >> takeMySoulButton [

	^ AsynchronicButtonWebView
		labeled: 'Just take my soul'
		applying: [ :button | button addClass bootstrapCommon button + button addClass bootstrapCommon buttonPrimary ]
]

{ #category : #tests }
BootstrapModalWebViewTest >> testOnCloseTrigger [

	| html footer header dialog |

	footer := BootstrapModalFooterWebView
		withCloseButtonLabeled: 'Ok'
		applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].
	header := BootstrapModalHeaderWebView dismissableTitled: 'Terms and Conditions'.
	dialog := BootstrapModalWebView
		withHeader: header
		content: 'Some very large legal stuff. ;)'
		footer: footer.

	dialog onCloseTrigger disable.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button id="button-id1" class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button id="button-id2" class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#button-id2").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapModalWebViewTest >> testOnTriggerDoesNothingWithoutAdditionalActionButtons [

	| html footer header dialog |

	footer := BootstrapModalFooterWebView
		withCloseButtonLabeled: 'Ok'
		applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].
	header := BootstrapModalHeaderWebView titled: 'Terms and Conditions'.
	dialog := BootstrapModalWebView
		withHeader: header
		content: 'Some very large legal stuff. ;)'
		footer: footer.

	dialog onTrigger disable.

	html := self render: dialog.	"The only button is the close one, so no need to generate javascript."
	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'
]

{ #category : #tests }
BootstrapModalWebViewTest >> testOnTriggerWithButtons [

	| html dialog |

	dialog := BootstrapModalBuilder new
		headerTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		closeButtonLabeled: 'Disagree'
			applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ];
		addFooterButton: self agreeButton;
		addFooterButton: self takeMySoulButton;
		build.

	dialog onTrigger disable.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Disagree</button><button id="button-id1" class="btn btn-success" type="button">Agree</button><button id="button-id2" class="btn btn-primary" type="button">Just take my soul</button></div></div></div></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#button-id2").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapModalWebViewTest >> testRenderContentOn [

	| html footer header dialog |

	footer := BootstrapModalFooterWebView
		withCloseButtonLabeled: 'Ok'
		applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].
	header := BootstrapModalHeaderWebView titled: 'Terms and Conditions'.

	dialog := BootstrapModalWebView
		withHeader: header
		content: 'Some very large legal stuff. ;)'
		footer: footer.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'
]

{ #category : #tests }
BootstrapModalWebViewTest >> testRenderContentOnWithCommands [

	| html footer header legalDialog |

	footer := BootstrapModalFooterWebView
		withCloseButtonLabeled: 'Ok'
		applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].
	header := BootstrapModalHeaderWebView titled: 'Terms and Conditions'.

	legalDialog := BootstrapModalWebView
		withHeader: header
		content: 'Some very large legal stuff. ;)'
		footer: footer
		applyingToDialog: [ :dialog | dialog addClass bootstrapCommon fade ]
		andModalDocument: [ :document | document addClass bootstrapCommon modalLarge ].

	html := self render: legalDialog.

	self
		assert: html
		equals:
			'<div class="modal fade" tabindex="-1" role="dialog"><div class="modal-dialog modal-lg" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'
]
