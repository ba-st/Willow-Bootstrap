rendering
renderTooltipContentApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| div tooltip |

			div := canvas div.
			tooltip := canvas jQuery new bootstrapTooltip.
			aBlock value: tooltip.
			div script: tooltip ]