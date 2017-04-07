private
renderModalContentApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| div modal |

			div := canvas div class: BootstrapCssStyles modal.
			modal := canvas jQuery new bootstrapModal.
			aBlock value: modal.
			div script: modal ]