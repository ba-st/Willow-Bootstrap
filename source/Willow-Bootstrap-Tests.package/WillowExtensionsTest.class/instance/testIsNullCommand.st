tests
testIsNullCommand

	self
		assert: CompositeComponentCommand empty isNullCommand;
		assert: (CompositeComponentCommand empty + CompositeComponentCommand empty) isNullCommand;
		deny: ((ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)) isNullCommand;
		deny: DeselectAllOptionsCommand new isNullCommand