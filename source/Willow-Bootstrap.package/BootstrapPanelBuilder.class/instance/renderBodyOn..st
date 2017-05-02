private - Rendering
renderBodyOn: canvas

	bodyOptional
		withContentDo: [ :renderableInsideBody | 
			canvas div
				class: BootstrapCssStyles panelBody;
				with: renderableInsideBody ]