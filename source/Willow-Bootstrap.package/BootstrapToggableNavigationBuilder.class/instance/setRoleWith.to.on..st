private
setRoleWith: aRoleValue to: aComponent on: aCanvas

	(ComponentAttributeCommand named: BootstrapConstants role with: aRoleValue) applyTo: aComponent on: aCanvas