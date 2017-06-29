Configuring
addActionLabeled: aRenderable executing: anActionBlock

	| anchor |

	anchor := AsynchronicAnchorWebView labeled: aRenderable.
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]