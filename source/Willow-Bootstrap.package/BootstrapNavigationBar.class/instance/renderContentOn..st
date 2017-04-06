rendering
renderContentOn: aCanvas

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