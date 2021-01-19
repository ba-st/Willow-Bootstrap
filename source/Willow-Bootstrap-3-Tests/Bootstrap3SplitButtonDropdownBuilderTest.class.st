"
A BootstrapSplitButtonDropdownBuilderTest is a test class for testing the behavior of BootstrapSplitButtonDropdownBuilder
"
Class {
	#name : #Bootstrap3SplitButtonDropdownBuilderTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #private }
Bootstrap3SplitButtonDropdownBuilderTest >> supplier [

	^ Bootstrap3ComponentSupplier online
]

{ #category : #tests }
Bootstrap3SplitButtonDropdownBuilderTest >> testOn [

	"This is a Split Button, so onTrigger must act on the main button not the dropdown one."

	| splitButton html |

	splitButton := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	splitButton on trigger disable.

	html := self render: splitButton.

	self
		assert: html
		equals:
			'<div class="btn-group"><button id="button-id1" class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li></ul></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3SplitButtonDropdownBuilderTest >> testRenderContentOn [

	| button html |

	button := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3SplitButtonDropdownBuilderTest >> testRenderContentOnRightAligned [

	| button html |

	button := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		beRightAligned;
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu dropdown-menu-right"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3SplitButtonDropdownBuilderTest >> testRenderContentOnWithNonDropdownButtonCommands [

	| splitButton html |

	splitButton := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applyingToMainButton: [ :mainButton | mainButton beDisabled ]
			andToBoth: [ :button | button addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	html := self render: splitButton.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" disabled type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3SplitButtonDropdownBuilderTest >> testRenderContentOnWithSeveralActions [

	| button html |

	button := self supplier splitButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action #1' executing: [ :action | action on trigger disable ];
		addActionLabeled: 'Action #2' executing: [ :action | action on trigger serializeContainerForm ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn btn-danger" type="button">Dropdown</button><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action #1</a></li><li><a id="a-id3" role="button">Action #2</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();Willow.callServer({"type":"POST","url":"/","data":["2",$(this).closest("form").find(":input").serialize()].join("&")})});</script>'
]
