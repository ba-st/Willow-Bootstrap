tests
testDeployFiles

	self
		useFileTestingPlatformDuring: [ BootstrapTypeaheadDeploymentLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('bootstrap-typeahead-4.0.2');
				assert: GRPlatform current createdFiles equals: #('bootstrap-typeahead-4.0.2/bootstrap3-typeahead.min.js') ]