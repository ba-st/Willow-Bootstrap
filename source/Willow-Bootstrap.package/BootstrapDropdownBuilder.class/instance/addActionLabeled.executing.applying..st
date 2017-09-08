Configuring
addActionLabeled: aRenderable executing: anActionBlock applying: aCommand

	| anchor |

	anchor := AsynchronicAnchorWebView labeled: aRenderable applying: aCommand.
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]