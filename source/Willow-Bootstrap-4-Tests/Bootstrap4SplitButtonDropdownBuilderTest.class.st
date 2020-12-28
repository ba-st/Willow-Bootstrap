Class {
	#name : #Bootstrap4SplitButtonDropdownBuilderTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #private }
Bootstrap4SplitButtonDropdownBuilderTest >> supplier [

	^ Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4SplitButtonDropdownBuilderTest >> testOnTrigger [

	"This is a Split Button, so onTrigger must act on the main button not the dropdown one."

	| splitButton html |

	splitButton := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	splitButton onTrigger disable.

	html := self render: splitButton.

	self
		assert: html
		equals:
			'<div class="btn-group"><button id="button-id1" class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle dropdown-toggle-split btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button"><span class="sr-only">Toggle dropdown</span></button><div class="dropdown-menu"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4SplitButtonDropdownBuilderTest >> testRenderContentOn [

	| button html |

	button := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle dropdown-toggle-split btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button"><span class="sr-only">Toggle dropdown</span></button><div class="dropdown-menu"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4SplitButtonDropdownBuilderTest >> testRenderContentOnRightAligned [

	| button html |

	button := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		beRightAligned;
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle dropdown-toggle-split btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button"><span class="sr-only">Toggle dropdown</span></button><div class="dropdown-menu dropdown-menu-right"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4SplitButtonDropdownBuilderTest >> testRenderContentOnWithNonDropdownButtonCommands [

	| splitButton html |

	splitButton := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applyingToMainButton: [ :mainButton | mainButton beDisabled ]
			andToBoth: [ :button | button addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	html := self render: splitButton.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" disabled type="button">Dropdown</button><button class="btn dropdown-toggle dropdown-toggle-split btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button"><span class="sr-only">Toggle dropdown</span></button><div class="dropdown-menu"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4SplitButtonDropdownBuilderTest >> testRenderContentOnWithSeveralActions [

	| button html |

	button := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action #1' executing: [ :action | action on trigger disable ];
		addActionLabeled: 'Action #2' executing: [ :action | action on trigger serializeContainerForm ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle dropdown-toggle-split btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button"><span class="sr-only">Toggle dropdown</span></button><div class="dropdown-menu"><a id="a-id1" role="button" href="#" class="dropdown-item">Action #1</a><a id="a-id3" role="button" href="#" class="dropdown-item">Action #2</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();Willow.callServer({"type":"POST","url":"/","data":["2",$(this).closest("form").find(":input").serialize()].join("&")})});</script>'
]
