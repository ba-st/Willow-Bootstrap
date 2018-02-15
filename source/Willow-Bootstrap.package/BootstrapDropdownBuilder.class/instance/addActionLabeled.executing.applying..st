Configuring
addActionLabeled: aRenderable executing: anActionBlock applying: aCommand

	| anchor |

	anchor := supplier asynchronicLinkLabeled: aRenderable applying: [ :link :constants | (link setAttribute: constants bootstrap role to: constants bootstrap button) + aCommand ].
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]