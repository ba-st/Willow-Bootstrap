tests
testCantBuildWithLessThanTwoPanes

	self
		should: [ supplier pillsBuilder buildApplying: CompositeComponentCommand empty ] raise: AssertionFailed;
		should: [ supplier pillsBuilder
				addPillHeadedBy: 'Home' containing: 'The home page';
				buildApplying: CompositeComponentCommand empty ]
			raise: AssertionFailed