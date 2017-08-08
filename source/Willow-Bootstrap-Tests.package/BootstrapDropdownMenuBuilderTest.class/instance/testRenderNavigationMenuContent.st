tests
testRenderNavigationMenuContent

	| navigationBar html |

	navigationBar := [ :canvas | 
	| menu list |

	list := canvas unorderedList.
	list
		class: BootstrapCssStyles nav;
		class: BootstrapCssStyles navbarNavigation.
	menu := supplier dropdownMenuBuilder
		beNavigationMenuIn: list;
		labeled: 'Dropdown';
		addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];
		build.
	list with: [ canvas render: menu ] ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<ul class="nav navbar-nav"><li class="dropdown"><a role="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown&nbsp;<span class="caret"></span></a><ul class="dropdown-menu"><li><a role="button" id="a-id1" class="btn">Action</a></li></ul></li></ul><script type="text/javascript">$("#a-id1").click(function(){$(this).prop("disabled",true)});</script>'