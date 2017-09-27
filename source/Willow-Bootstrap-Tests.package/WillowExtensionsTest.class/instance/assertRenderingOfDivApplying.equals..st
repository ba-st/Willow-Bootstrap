private
assertRenderingOfDivApplying: aCommand equals: anExpectedHTML

	self assert: (self render: (GenericContainerWebView wrapping: [  ] applying: aCommand)) equals: anExpectedHTML