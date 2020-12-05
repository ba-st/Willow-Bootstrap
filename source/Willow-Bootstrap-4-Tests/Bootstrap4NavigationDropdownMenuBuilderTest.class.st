Class {
	#name : #Bootstrap4NavigationDropdownMenuBuilderTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #private }
Bootstrap4NavigationDropdownMenuBuilderTest >> navigationBarWith: menuBuilder [

	^ [ :canvas | 
	canvas navigation
		with: [ | nav |

			nav := canvas unorderedList.
			menuBuilder containedIn: nav.
			nav with: menuBuilder build applying: [ :list | list addClass bootstrap4 navbarNavigation ]
			]
		applying: [ :nav | nav addClass bootstrap4 navbar ]
	]
]

{ #category : #initialization }
Bootstrap4NavigationDropdownMenuBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4NavigationDropdownMenuBuilderTest >> testRenderContentOn [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
				addDivider;
				addActionLabeled: 'Another action'
					executing: [ :button | button onTrigger disable ]
					applying: [ :button | button addClass willow ];
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a><div class="dropdown-divider" role="separator"></div><a id="a-id3" role="button" href="#" class="dropdown-item willow">Another action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4NavigationDropdownMenuBuilderTest >> testRenderContentOnRightAligned [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
				beRightAligned;
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu dropdown-menu-right"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4NavigationDropdownMenuBuilderTest >> testRenderContentOnWithHeaders [

	| navigation html |

	navigation := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addHeaderLabeled: 'Dropdown header';
				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
				yourself ).

	html := self render: navigation.

	self
		assert: html
		equals:
			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu"><h6 class="dropdown-header">Dropdown header</h6><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4NavigationDropdownMenuBuilderTest >> testRenderNavigationMenuContent [

	| navigationBar html |

	navigationBar := self
		navigationBarWith:
			( supplier navigationDropdownMenuBuilder
				labeled: 'Dropdown';
				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
				yourself ).
	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]
