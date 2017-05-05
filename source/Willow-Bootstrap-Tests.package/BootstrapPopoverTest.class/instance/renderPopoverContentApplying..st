rendering
renderPopoverContentApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| div popover |

			div := canvas div.
			popover := canvas jQuery new bootstrapPopover.
			aBlock value: popover.
			div script: popover ]