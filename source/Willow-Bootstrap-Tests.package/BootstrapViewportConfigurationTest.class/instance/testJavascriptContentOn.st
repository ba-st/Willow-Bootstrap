tests-printing
testJavascriptContentOn

	self
		assert: BootstrapViewportConfiguration new asJavascript equals: '{"selector":"body","padding":0}';
		assert: (BootstrapViewportConfiguration new selector: 'div' padding: 15) asJavascript equals: '{"selector":"div","padding":15}'