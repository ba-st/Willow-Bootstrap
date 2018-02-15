tests-rendering
testRenderContentOn

	| navigationBar html |

	navigationBar := BootstrapNavigationBar fluidBrandedWith: 'Willow' containing: '' applying: [ :nav |  ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar"><div class="container-fluid"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div class="collapse navbar-collapse" id="navbar-content-id1"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'