private - Rendering
renderHeadingOn: canvas

	headingOptional
		withContentDo: [ :heading | 
			canvas div
				class: BootstrapCssStyles panelHeading;
				with: heading ]