rendering
renderContentOn: aCanvas

	aCanvas div
		class: BootstrapCssStyles modalHeader;
		with: [ dismissButtonOptional withContentDo: [ :dismissButton | aCanvas render: dismissButton ].
			aCanvas heading
				level4;
				class: BootstrapCssStyles modalTitle;
				with: title ]