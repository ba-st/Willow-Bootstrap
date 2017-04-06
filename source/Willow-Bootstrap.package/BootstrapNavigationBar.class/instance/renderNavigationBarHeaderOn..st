private
renderNavigationBarHeaderOn: aCanvas

	aCanvas div
		class: BootstrapCssStyles navbarHeader;
		with: [ aCanvas
				render: (BootstrapHamburgerButton targeting: navbarContent identifier);
				render: brandView ]