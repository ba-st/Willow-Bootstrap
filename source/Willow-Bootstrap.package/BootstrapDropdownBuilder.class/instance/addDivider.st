Configuring
addDivider

	menuItems
		add: [ :canvas | 
			| listItem |

			listItem := canvas listItem.
			listItem class: BootstrapCssStyles divider.
			(ComponentAccessibilityEnrichmentCommand toDeclare: BootstrapConstants role with: 'divider') applyTo: listItem on: canvas ]