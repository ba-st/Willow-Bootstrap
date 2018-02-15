tests-rendering
testRenderContentOnWithContent

	| navigationBar html |

	navigationBar := BootstrapNavigationBar
		brandedWith: 'Willow'
		containing: [ :canvas | 
			canvas paragraph
				class: BootstrapCssStyles navbarText;
				class: BootstrapCssStyles navbarRight;
				with: '2017' ]
		applying: [ :navigation | navigation addClass bootstrap navbarDefault ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar navbar-default"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div class="collapse navbar-collapse" id="navbar-content-id1"><p class="navbar-text navbar-right">2017</p></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'