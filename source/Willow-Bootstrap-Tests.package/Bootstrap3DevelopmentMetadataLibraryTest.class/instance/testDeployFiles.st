tests
testDeployFiles

	self
		useFileTestingPlatformDuring: [ Bootstrap3DevelopmentMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('bootstrap-3.3.7' 'bootstrap-3.3.7/css' 'bootstrap-3.3.7/fonts' 'bootstrap-3.3.7/js');
				assert: GRPlatform current createdFiles
					equals:
					#('bootstrap-3.3.7/css/bootstrap-theme.css' 'bootstrap-3.3.7/css/bootstrap-theme.css.map' 'bootstrap-3.3.7/css/bootstrap.css' 'bootstrap-3.3.7/css/bootstrap.css.map' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.eot' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.svg' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.ttf' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff' 'bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff2' 'bootstrap-3.3.7/js/bootstrap.js') ]