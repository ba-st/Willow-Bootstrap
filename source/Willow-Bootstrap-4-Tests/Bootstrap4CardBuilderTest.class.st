Class {
	#name : #Bootstrap4CardBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #running }
Bootstrap4CardBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4CardBuilderTest >> testRenderingBottomImage [

	| imageCard html |

	imageCard := supplier cardBuilder 
		bottomImageCapLocatedAt:
			'https://raw.githubusercontent.com/ba-st/Willow-Bootstrap/release-candidate/assets/logos/128x128.png'
			applying: [  ];
		wrapping: 'Willow Bootstrap 4';
		buildApplying:
				[ :card | card addClass bootstrapCommon textCenter + ( card setStyleTo: [ :style | style width: 128 px ] ) ].

	html := self render: imageCard.

	self
		assert: html
		equals:
			'<div class="card text-center" style="width: 128px;"><div class="card-body">Willow Bootstrap 4</div><img alt="" src="https://raw.githubusercontent.com/ba-st/Willow-Bootstrap/release-candidate/assets/logos/128x128.png" class="card-img-top"/></div>'
]

{ #category : #tests }
Bootstrap4CardBuilderTest >> testRenderingMixedContent [

	| complexCard listGroup html |

	listGroup := supplier
		unorderedListApplying: [ :list |  ]
		listing: #('Cras justo odio' 'Dapibus ac facilisis in' 'Vestibulum at eros')
		applyingToEach: [ :listItem |  ].

	complexCard := supplier cardBuilder
		addTitle: 'Willow Bootstrap' withLevel: 5;
		addSubtitle: 'Cool ajax-based web apps'
			withLevel: 6
			applying: [ :sub | sub addClass bootstrap4 textMuted ];
		withListGroup: listGroup;
		addActionLabeled: 'Card Link' executing: [ :link | link onTrigger disable ];
		addActionLabeled: 'Another Link' executing: [ :link | link onTrigger disable ];
		buildApplying: [ :card | card setStyleTo: [ :style | style width: 18 rem ] ].

	html := self render: complexCard.

	self
		assert: html
		equals:
			'<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">Willow Bootstrap</h5><h6 class="card-subtitle text-muted">Cool ajax-based web apps</h6></div><ul class="list-group list-group-flush"><li class="list-group-item">Cras justo odio</li><li class="list-group-item">Dapibus ac facilisis in</li><li class="list-group-item">Vestibulum at eros</li></ul><div class="card-body"><a id="a-id1" href="#" class="card-link">Card Link</a><a id="a-id2" href="#" class="card-link">Another Link</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4CardBuilderTest >> testRenderingTitlesTextAndLinks [

	| complexCard html |

	complexCard := supplier cardBuilder
		addTitle: 'Willow Bootstrap' withLevel: 5;
		addSubtitle: 'Cool ajax-based web apps' withLevel: 6 applying: [ :sub | sub addClass bootstrap4 textMuted ];
		addText: 'Some quick example text to build on the card title and make up the bulk of the card''s content';
		addActionLabeled: 'Card Link' executing: [ :link | link onTrigger disable ];
		addActionLabeled: 'Another Link' executing: [ :link | link onTrigger disable ];
		buildApplying: [ :card | card setStyleTo: [ :style | style width: 18 rem ] ].

	html := self render: complexCard.

	self
		assert: html
		equals:
			'<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">Willow Bootstrap</h5><h6 class="card-subtitle text-muted">Cool ajax-based web apps</h6><p class="card-text">Some quick example text to build on the card title and make up the bulk of the card''s content</p><a id="a-id1" href="#" class="card-link">Card Link</a><a id="a-id2" href="#" class="card-link">Another Link</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4CardBuilderTest >> testRenderingTopImage [

	| imageCard html |

	imageCard := supplier cardBuilder
		topImageCapLocatedAt:
			'https://raw.githubusercontent.com/ba-st/Willow-Bootstrap/release-candidate/assets/logos/128x128.png'
			applying: [  ];
		wrapping: 'Willow Bootstrap 4';
		buildApplying:
				[ :card | card addClass bootstrapCommon textCenter + ( card setStyleTo: [ :style | style width: 128 px ] ) ].

	html := self render: imageCard.

	self
		assert: html
		equals:
			'<div class="card text-center" style="width: 128px;"><img alt="" src="https://raw.githubusercontent.com/ba-st/Willow-Bootstrap/release-candidate/assets/logos/128x128.png" class="card-img-top"/><div class="card-body">Willow Bootstrap 4</div></div>'
]
