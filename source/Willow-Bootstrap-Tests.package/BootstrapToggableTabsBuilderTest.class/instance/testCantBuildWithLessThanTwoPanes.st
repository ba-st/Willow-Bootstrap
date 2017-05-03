tests
testCantBuildWithLessThanTwoPanes

	self
		should: [ supplier tabsBuilder buildApplying: CompositeComponentCommand empty ] raise: AssertionFailed;
		should: [ supplier tabsBuilder
				addTabHeadedBy: 'Home' containing: 'The home page';
				buildApplying: CompositeComponentCommand empty ]
			raise: AssertionFailed