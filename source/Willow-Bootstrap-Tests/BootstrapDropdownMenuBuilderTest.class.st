"
A BootstrapDropdownMenuBuilderTest is a test class for testing the behavior of BootstrapDropdownMenuBuilder
"
Class {
	#name : #BootstrapDropdownMenuBuilderTest,
	#superclass : #WARenderingTest,
	#instVars : [
		'supplier'
	],
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #initialization }
BootstrapDropdownMenuBuilderTest >> setUp [

	super setUp.
	supplier := Bootstrap3ComponentSupplier online
]

{ #category : #tests }
BootstrapDropdownMenuBuilderTest >> testRenderContentOn [

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		addDivider;
		addActionLabeled: 'Another action' executing: [ :button | button onTrigger disable ] applying: [ :button | button addClass willow ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li><li class="divider" role="separator"></li><li><a id="a-id3" role="button" class="willow">Another action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapDropdownMenuBuilderTest >> testRenderContentOnRightAligned [

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		beRightAligned;
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu dropdown-menu-right"><li><a id="a-id2" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapDropdownMenuBuilderTest >> testRenderContentOnWithButton [

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown' applying: [ :button | button addClass bootstrap3 buttonDefault ];
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		addDivider;
		addActionLabeled: 'Another action' executing: [ :button | button onTrigger disable ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><button class="btn dropdown-toggle btn-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li><li class="divider" role="separator"></li><li><a id="a-id2" role="button">Another action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapDropdownMenuBuilderTest >> testRenderContentOnWithHeaders [

	| menu html |

	menu := supplier dropdownMenuBuilder
		labeled: 'Dropdown';
		addHeaderLabeled: 'Dropdown header';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		build.

	html := self render: menu.

	self
		assert: html
		equals:
			'<div class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li class="dropdown-header">Dropdown header</li><li><a id="a-id2" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
BootstrapDropdownMenuBuilderTest >> testRenderNavigationMenuContent [

	| navigationBar html |

	navigationBar := [ :canvas | 
	| menu list |

	list := canvas unorderedList.
	list
		apply: [ :theList | theList addClass bootstrap3 nav + theList addClass bootstrap3 navbarNavigation ].
	menu := supplier dropdownMenuBuilder
		beNavigationMenuIn: list;
		labeled: 'Dropdown';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		build.
	list with: [ canvas render: menu ]
	].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><a id="a-id1" role="button" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li><a id="a-id2" role="button">Action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'
]
