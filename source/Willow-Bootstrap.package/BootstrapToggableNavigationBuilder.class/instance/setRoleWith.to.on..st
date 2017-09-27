private
setRoleWith: aRoleValue to: aComponent on: aCanvas

	[ :component :constants | component setAttribute: constants bootstrap role to: aRoleValue ] asWebComponentCommand applyTo: aComponent on: aCanvas