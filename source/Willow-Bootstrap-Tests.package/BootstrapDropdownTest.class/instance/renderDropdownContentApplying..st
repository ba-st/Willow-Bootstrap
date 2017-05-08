rendering
renderDropdownContentApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| div |

			div := canvas div.
			div class: BootstrapCssStyles dropdown.
			div
				with: [ | anchor dropdown |

					anchor := canvas anchor.
					(ComponentMetadataCommand toDeclare: BootstrapConstants target with: BootstrapConstants dropdown) applyTo: anchor on: canvas.
					(ComponentAttributeCommand named: BootstrapConstants role with: BootstrapConstants button) applyTo: anchor on: canvas.
					dropdown := canvas jQuery new bootstrapDropdown.
					aBlock value: dropdown.
					anchor script: dropdown.
					anchor
						with: [ canvas render: 'Menu'.
							canvas span class: BootstrapCssStyles caret ].
					canvas unorderedList
						class: BootstrapCssStyles dropdownMenu;
						with: [ canvas
								listItem: 'Menu option';
								listItem: 'Other option' ] ] ]