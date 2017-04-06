tests-rendering
testRenderContentOnWithCommands

	| navigationBar html |

	navigationBar := BootstrapNavigationBar
		brandedWith: (AsynchronicAnchorWebView labeled: 'Willow' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles navbarBrand))
		containing: ''
		applying:
			(ComponentClassificationCommand
				toStyleWithAll:
					{BootstrapCssStyles navbarDefault.
					BootstrapCssStyles navbarStaticTop}).

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar navbar-default navbar-static-top"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a role="button" class="navbar-brand">Willow</a></div><div class="collapse navbar-collapse" id="navbar-content-id1"></div></div></nav>'