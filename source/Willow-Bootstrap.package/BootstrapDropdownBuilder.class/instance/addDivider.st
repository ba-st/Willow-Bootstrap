Configuring
addDivider

	| dividerCommand |

	dividerCommand := [ :listItem :constants | listItem addClass bootstrap divider + (listItem setARIAAttribute: constants bootstrap role to: 'divider') ] asWebComponentCommand.

	menuItems add: [ :canvas | dividerCommand applyTo: canvas listItem on: canvas ]