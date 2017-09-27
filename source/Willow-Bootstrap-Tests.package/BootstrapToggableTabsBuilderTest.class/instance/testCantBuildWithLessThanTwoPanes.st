tests
testCantBuildWithLessThanTwoPanes

	self
		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;
		should: [ supplier tabsBuilder
				addTabHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :tabs |  ] ]
			raise: AssertionFailed