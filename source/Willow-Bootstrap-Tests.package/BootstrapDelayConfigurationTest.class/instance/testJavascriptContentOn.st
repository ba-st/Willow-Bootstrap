tests-printing
testJavascriptContentOn

	self
		assert: BootstrapDelayConfiguration new asJavascript equals: '{"show":0,"hide":0}';
		assert: (BootstrapDelayConfiguration new show: 500 hide: 200) asJavascript equals: '{"show":500,"hide":200}'