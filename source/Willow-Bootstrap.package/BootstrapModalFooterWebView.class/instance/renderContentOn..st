rendering
renderContentOn: aCanvas

	aCanvas div
		class: BootstrapCssStyles modalFooter;
		with: [ aCanvas render: closeButton.
			buttons do: [ :button | aCanvas render: button ] ]