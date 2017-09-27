tests
testCantBuildWithLessThanTwoPanes

	self
		should: [ supplier pillsBuilder buildApplying: [ :pills |  ] ] raise: AssertionFailed;
		should: [ supplier pillsBuilder
				addPillHeadedBy: 'Home' containing: 'The home page';
				buildApplying: [ :pills |  ] ]
			raise: AssertionFailed