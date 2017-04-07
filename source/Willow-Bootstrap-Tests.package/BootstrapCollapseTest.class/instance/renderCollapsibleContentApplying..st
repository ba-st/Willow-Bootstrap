private
renderCollapsibleContentApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| div collapse |

			div := canvas div.
			collapse := canvas jQuery new bootstrapCollapse.
			aBlock value: collapse.
			div script: collapse ]