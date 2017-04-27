private
numberInputFor: aCssSelector

	^aCssSelector input withAttribute: 'type' equalTo: 'number'