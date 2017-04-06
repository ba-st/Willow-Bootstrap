tests-rendering
testRenderContentOnWithContent

	| navigationBar html |

	navigationBar := BootstrapNavigationBar
		brandedWith: (AsynchronicAnchorWebView labeled: 'Willow' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles navbarBrand))
		containing: [ :canvas | 
			canvas paragraph
				class: BootstrapCssStyles navbarText;
				class: BootstrapCssStyles navbarRight;
				with: '2017' ]
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles navbarDefault).

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar navbar-default"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a role="button" class="navbar-brand">Willow</a></div><div class="collapse navbar-collapse" id="navbar-content-id1"><p class="navbar-text navbar-right">2017</p></div></div></nav>'