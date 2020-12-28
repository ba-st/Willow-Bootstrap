Class {
	#name : #Bootstrap4SingleButtonDropdownBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #initialization }
Bootstrap4SingleButtonDropdownBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4SingleButtonDropdownBuilderTest >> testRenderContentOn [

	| button html |

	button := supplier singleButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="dropdown"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown</button><div class="dropdown-menu"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4SingleButtonDropdownBuilderTest >> testRenderContentOnRightAligned [

	| button html |

	button := supplier singleButtonDropdownBuilder
		labeled: 'Dropdown'
			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];
		addActionLabeled: 'Action' executing: [ :action | action on trigger disable ];
		beRightAligned;
		build.

	html := self render: button.

	self
		assert: html
		equals:
			'<div class="dropdown"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown</button><div class="dropdown-menu dropdown-menu-right"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]
