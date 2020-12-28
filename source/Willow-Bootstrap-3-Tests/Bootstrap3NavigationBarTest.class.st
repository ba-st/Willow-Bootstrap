"
A BootstrapNavigationBarTest is a test class for testing the behavior of BootstrapNavigationBar
"
Class {
	#name : #Bootstrap3NavigationBarTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #accessing }
Bootstrap3NavigationBarTest >> componentSupplier [

	^ Bootstrap3ComponentSupplier online
]

{ #category : #accessing }
Bootstrap3NavigationBarTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
Bootstrap3NavigationBarTest >> isSession [

^ true
]

{ #category : #'tests-rendering' }
Bootstrap3NavigationBarTest >> testRenderContentOn [

	| navigationBar html |

	navigationBar := Bootstrap3NavigationBar fluidBrandedWith: 'Willow' containing: '' applying: [ :nav |  ].

	html := self render: navigationBar.

	self
		assert: html
		equals:
			'<nav class="navbar"><div class="container-fluid"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-rendering' }
Bootstrap3NavigationBarTest >> testRenderContentOnWithCommands [

	| navigationBar html |

	navigationBar := Bootstrap3NavigationBar
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
Bootstrap3NavigationBarTest >> testRenderContentOnWithContent [

	| navigationBar html |

	navigationBar := Bootstrap3NavigationBar
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
