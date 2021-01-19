"
A BootstrapSingleButtonDropdownBuilderTest is a test class for testing the behavior of BootstrapSingleButtonDropdownBuilder
"
Class {
	#name : #Bootstrap3SingleButtonDropdownBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #initialization }
Bootstrap3SingleButtonDropdownBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap3ComponentSupplier online
]

{ #category : #tests }
Bootstrap3SingleButtonDropdownBuilderTest >> testRenderContentOn [

	| button html |

	button := supplier singleButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3SingleButtonDropdownBuilderTest >> testRenderContentOnRightAligned [

	| button html |

	button := supplier singleButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		beRightAligned;
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu dropdown-menu-right"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]
