private
renderNavigationBarHeaderOn: aCanvas

	aCanvas div
		class: BootstrapCssStyles navbarHeader;
		with: [ aCanvas
				render: (BootstrapHamburgerButton targeting: navbarContent identifier);
				render:
					(self componentSupplier
						asynchronicLinkLabeled: brandView
						applying: [ :anchor :constants | (anchor setAttribute: constants bootstrap role to: constants bootstrap button) + anchor addClass bootstrap navbarBrand ]) ]