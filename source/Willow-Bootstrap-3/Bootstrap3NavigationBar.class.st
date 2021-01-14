"
Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.
"
Class {
	#name : #Bootstrap3NavigationBar,
	#superclass : #WAPainter,
	#instVars : [
		'componentCommand',
		'brandView',
		'navbarContent',
		'containerCommand'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'Instance Creation' }
Bootstrap3NavigationBar class >> brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: [ :container | container addClass bootstrap3 container ]
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'Instance Creation' }
Bootstrap3NavigationBar class >> fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: [ :container | container addClass bootstrap3 containerFluid ]
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'private-instance creation' }
Bootstrap3NavigationBar class >> styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self new
		initializeStyledAs: aContainerStylingCommand
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent asWebComponentCommand 
]

{ #category : #initialization }
Bootstrap3NavigationBar >> initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	containerCommand := aContainerCommand.
	componentCommand := aCommandToComponent.
	navbarContent := self componentSupplier
		divisionContainerWrapping: aWebView
		applying: [ :div | div addClass bootstrap3 collapse + div addClass bootstrap3 navbarCollapse ].
	brandView := aBrandWebView
]

{ #category : #rendering }
Bootstrap3NavigationBar >> renderContentOn: aCanvas [

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
Bootstrap3NavigationBar >> renderNavigationBarHeaderOn: aCanvas [

	aCanvas div
		with: [ aCanvas
				render: ( Bootstrap3HamburgerButton targeting: ( navbarContent identifierOn: aCanvas ) );
				render:
					( self componentSupplier
						asynchronicLinkLabeled: brandView
						applying: [ :anchor :constants | ( anchor setARIARoleTo: #button ) + anchor addClass bootstrap3 navbarBrand ] )
			]
		applying: [ :div | div addClass bootstrap3 navbarHeader ]
]
