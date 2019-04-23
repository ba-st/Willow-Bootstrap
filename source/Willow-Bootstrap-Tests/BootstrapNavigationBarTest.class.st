"
A BootstrapNavigationBarTest is a test class for testing the behavior of BootstrapNavigationBar
"
Class {
	#name : #BootstrapNavigationBarTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #accessing }
BootstrapNavigationBarTest >> componentSupplier [

	^ Bootstrap3ComponentSupplier online
]

{ #category : #accessing }
BootstrapNavigationBarTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
BootstrapNavigationBarTest >> isSession [

^ true
]

{ #category : #'tests-rendering' }
BootstrapNavigationBarTest >> testRenderContentOn [

	| navigationBar html |

	navigationBar := BootstrapNavigationBar fluidBrandedWith: 'Willow' containing: '' applying: [ :nav |  ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar"><div class="container-fluid"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-rendering' }
BootstrapNavigationBarTest >> testRenderContentOnWithCommands [

	| navigationBar html |

	navigationBar := BootstrapNavigationBar
		brandedWith: 'Willow'
		containing: ''
		applying:
			[ :navigation | navigation addClass bootstrap3 navbarDefault + navigation addClass bootstrap3 navbarStaticTop ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar navbar-default navbar-static-top"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-rendering' }
BootstrapNavigationBarTest >> testRenderContentOnWithContent [

	| navigationBar html |

	navigationBar := BootstrapNavigationBar
		brandedWith: 'Willow'
		containing: [ :canvas | 
			canvas paragraph
				with: '2017'
				applying: [ :p | p addClass bootstrap3 navbarText + p addClass bootstrap3 navbarRight ]
			]
		applying: [ :navigation | navigation addClass bootstrap3 navbarDefault ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar navbar-default"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"><p class="navbar-text navbar-right">2017</p></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'
]
