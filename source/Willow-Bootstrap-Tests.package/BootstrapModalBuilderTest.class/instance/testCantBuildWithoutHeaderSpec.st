tests
testCantBuildWithoutHeaderSpec

	self should: [ BootstrapComponentSupplier online dialogBuilder build ] raise: AssertionFailed