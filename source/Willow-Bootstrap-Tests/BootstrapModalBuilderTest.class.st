Class {
	#name : #BootstrapModalBuilderTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #testing }
BootstrapModalBuilderTest class >> isAbstract [

	^ self name = #BootstrapModalBuilderTest
]

{ #category : #private }
BootstrapModalBuilderTest >> supplier [

	^ self subclassResponsibility
]

{ #category : #tests }
BootstrapModalBuilderTest >> testBeSelfCleaning [

	| html dialog |

	dialog := self supplier dialogBuilder
		beSelfCleaning;
		headerTitled: 'Terms and Conditions';
		closeButtonLabeled: 'Ok'
			applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ];
		build.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog" id="id1"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'
]

{ #category : #tests }
BootstrapModalBuilderTest >> testCantBuildWithoutHeaderSpec [

	self should: [ self supplier dialogBuilder build ] raise: AssertionFailed
]

{ #category : #tests }
BootstrapModalBuilderTest >> testRenderContentOn [

	| html dialog |

	dialog := self supplier dialogBuilder
		headerTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ];
		build.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'
]

{ #category : #tests }
BootstrapModalBuilderTest >> testRenderContentOnWithCommands [

	| html legalDialog |

	legalDialog := self supplier dialogBuilder
		headerTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		closeButtonLabeled: 'Ok'
			applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ];
		applyingToDialog: [ :dialog | dialog addClass bootstrapCommon fade ];
		buildApplying: [ :document | document addClass bootstrapCommon modalLarge ].

	html := self render: legalDialog.

	self
		assert: html
		equals:
			'<div class="modal fade" tabindex="-1" role="dialog"><div class="modal-dialog modal-lg" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'
]

{ #category : #tests }
BootstrapModalBuilderTest >> testRenderContentOnWithDismissableHeader [

	| html dialog |

	dialog := self supplier dialogBuilder
		dismissableHeaderTitled: 'Terms and Conditions';
		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ];
		build.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'
]

{ #category : #tests }
BootstrapModalBuilderTest >> testSimplestDialog [

	| html |

	html := self
		render:
			(self supplier dialogBuilder
				headerTitled: 'Title';
				build).

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Title</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn" data-dismiss="modal" type="button">Close</button></div></div></div></div>'
]
