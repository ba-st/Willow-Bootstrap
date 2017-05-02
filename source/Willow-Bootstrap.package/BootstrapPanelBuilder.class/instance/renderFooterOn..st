private - Rendering
renderFooterOn: canvas

	footerOptional
		withContentDo: [ :footer | 
			canvas div
				class: BootstrapCssStyles panelFooter;
				with: footer ]