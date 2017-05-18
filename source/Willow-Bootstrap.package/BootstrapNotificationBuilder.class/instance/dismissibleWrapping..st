Configuring
dismissibleWrapping: aRenderable

	| button |

	button := BootstrapDismissButton dismissing: BootstrapConstants alert.
	content := [ :canvas | 
	canvas
		render: button;
		render: aRenderable ].
	dismissCommand := ComponentClassificationCommand toStyleWith: BootstrapCssStyles alertDismissible