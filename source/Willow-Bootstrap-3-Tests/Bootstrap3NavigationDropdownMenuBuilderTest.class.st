"
A BootstrapDropdownMenuBuilderTest is a test class for testing the behavior of BootstrapDropdownMenuBuilder
"
Class {
	#name : #Bootstrap3NavigationDropdownMenuBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #private }
Bootstrap3NavigationDropdownMenuBuilderTest >> navigationBarWith: menuBuilder [

	^ [ :canvas | 
	| navigationBar |

	navigationBar := canvas unorderedList.
	menuBuilder containedIn: navigationBar.
	navigationBar
		with: menuBuilder build
		applying: [ :list | list addClass bootstrap3 nav + list addClass bootstrap3 navbarNavigation ]
	]
]

{ #category : #initialization }
Bootstrap3NavigationDropdownMenuBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap3ComponentSupplier online
]

{ #category : #tests }
Bootstrap3NavigationDropdownMenuBuilderTest >> testRenderContentOn [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addActionLabeled: 'Action' executing: [ :button | button on trigger disable ];
				addDivider;
				addActionLabeled: 'Another action'
					executing: [ :button | button on trigger disable ]
					applying: [ :button | button addClass willow ];
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li><li class="divider" role="separator"></li><li><a id="a-id3" role="button" class="willow">Another action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3NavigationDropdownMenuBuilderTest >> testRenderContentOnRightAligned [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addActionLabeled: 'Action' executing: [ :button | button on trigger disable ];
				beRightAligned;
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu dropdown-menu-right"><li><a id="a-id2" role="button">Action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3NavigationDropdownMenuBuilderTest >> testRenderContentOnWithButton [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown' applying: [ :button | button addClass bootstrap3 buttonDefault ];
				addActionLabeled: 'Action' executing: [ :button | button on trigger disable ];
				addDivider;
				addActionLabeled: 'Another action' executing: [ :button | button on trigger disable ];
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><button class="btn dropdown-toggle btn-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li><li class="divider" role="separator"></li><li><a id="a-id2" role="button">Another action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3NavigationDropdownMenuBuilderTest >> testRenderContentOnWithHeaders [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addHeaderLabeled: 'Dropdown header';
				addActionLabeled: 'Action' executing: [ :button | button on trigger disable ];
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li class="dropdown-header">Dropdown header</li><li><a id="a-id2" role="button">Action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap3NavigationDropdownMenuBuilderTest >> testRenderNavigationMenuContent [

	| navigationBar html |

	navigationBar := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addActionLabeled: 'Action' executing: [ :button | button on trigger disable ];
				yourself ).
	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]
