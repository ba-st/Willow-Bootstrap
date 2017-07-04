tests-Accessing
testDeployFiles

	self
		useFileTestingPlatformDuring: [ WillowBootstrapFileMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('willow-bootstrap-4.0.0' 'willow-bootstrap-4.0.0/css' 'willow-bootstrap-4.0.0/js');
				assert: GRPlatform current createdFiles equals: #('willow-bootstrap-4.0.0/css/willow-bootstrap.css' 'willow-bootstrap-4.0.0/js/willow-bootstrap.js') ]