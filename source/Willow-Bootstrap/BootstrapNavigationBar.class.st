"
Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.
"
Class {
	#name : #BootstrapNavigationBar,
	#superclass : #WAPainter,
	#instVars : [
		'componentCommand',
		'brandView',
		'navbarContent',
		'containerCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapNavigationBar class >> brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: [ :container | container addClass bootstrap3 container ]
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'Instance Creation' }
BootstrapNavigationBar class >> fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: [ :container | container addClass bootstrap3 containerFluid ]
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'private-instance creation' }
BootstrapNavigationBar class >> styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self new
		initializeStyledAs: aContainerStylingCommand
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent asWebComponentCommand 
]

{ #category : #initialization }
BootstrapNavigationBar >> initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	containerCommand := aContainerCommand.
	componentCommand := aCommandToComponent.
	navbarContent := IdentifiedWebView
		forDivNamed: 'navbar-content'
		containing: aWebView
		applying: [ :div | div addClass bootstrap3 collapse + div addClass bootstrap3 navbarCollapse ].
	brandView := aBrandWebView
]

{ #category : #rendering }
BootstrapNavigationBar >> renderContentOn: aCanvas [

	aCanvas navigation
		with: [ aCanvas div
				with: [ self renderNavigationBarHeaderOn: aCanvas.
					aCanvas render: navbarContent
					]
				applying: containerCommand
			]
		applying: [ :nav | nav addClass bootstrap3 navbar + componentCommand ]
]

{ #category : #private }
BootstrapNavigationBar >> renderNavigationBarHeaderOn: aCanvas [

	aCanvas div
		with: [ navbarContent identifyIn: aCanvas.
			aCanvas
				render: ( BootstrapHamburgerButton targeting: navbarContent identifier );
				render:
					( self componentSupplier
						asynchronicLinkLabeled: brandView
						applying: [ :anchor :constants | ( anchor setARIARoleTo: #button ) + anchor addClass bootstrap3 navbarBrand ] )
			]
		applying: [ :div | div addClass bootstrap3 navbarHeader ]
]
