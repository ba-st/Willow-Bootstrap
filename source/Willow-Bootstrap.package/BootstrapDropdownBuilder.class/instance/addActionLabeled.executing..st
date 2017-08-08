Configuring
addActionLabeled: aRenderable executing: anActionBlock

	| anchor |

	anchor := supplier
		asynchronicAnchorLabeled: aRenderable
		applying: CompositeComponentCommand empty.
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]