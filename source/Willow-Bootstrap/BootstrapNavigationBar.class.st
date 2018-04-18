"
Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.
"
Class {
	#name : #BootstrapNavigationBar,
	#superclass : #WAPainter,
	#instVars : [
		'containerClass',
		'componentCommand',
		'brandView',
		'navbarContent'
	],
	#category : 'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapNavigationBar class >> brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: BootstrapCssStyles container
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'Instance Creation' }
BootstrapNavigationBar class >> fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: BootstrapCssStyles containerFluid
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'private-instance creation' }
BootstrapNavigationBar class >> styledAs: aContainerClass brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self new
		initializeStyledAs: aContainerClass
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent asWebComponentCommand 
]

{ #category : #initialization }
BootstrapNavigationBar >> initializeStyledAs: aContainerClass brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	containerClass := aContainerClass.
	componentCommand := aCommandToComponent.
	navbarContent := IdentifiedWebView
		forDivNamed: 'navbar-content'
		containing: aWebView
		applying: [ :div | div addClass bootstrap collapse + div addClass bootstrap navbarCollapse ].
	brandView := aBrandWebView
]

{ #category : #rendering }
BootstrapNavigationBar >> renderContentOn: aCanvas [

	| nav |

	nav := aCanvas navigation.
	nav class: BootstrapCssStyles navbar.
	componentCommand applyTo: nav on: aCanvas.
	nav
		with: [ aCanvas div
				class: containerClass;
				with: [ "We need that the container have assigned an id before the header is rendered"
					navbarContent identifyIn: aCanvas.
					self renderNavigationBarHeaderOn: aCanvas.
					aCanvas render: navbarContent ] ]
]

{ #category : #private }
BootstrapNavigationBar >> renderNavigationBarHeaderOn: aCanvas [

	aCanvas div
		class: BootstrapCssStyles navbarHeader;
		with: [ aCanvas
				render: (BootstrapHamburgerButton targeting: navbarContent identifier);
				render:
					(self componentSupplier
						asynchronicLinkLabeled: brandView
						applying: [ :anchor :constants | (anchor setAttribute: constants bootstrap role to: constants bootstrap button) + anchor addClass bootstrap navbarBrand ]) ]
]