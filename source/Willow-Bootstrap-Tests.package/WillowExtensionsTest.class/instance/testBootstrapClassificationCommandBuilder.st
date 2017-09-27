tests
testBootstrapClassificationCommandBuilder

	BootstrapCssStyles class selectors
		select: [ :selector | selector isUnary ]
		thenDo: [ :selector | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: selector ]
				equals:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: (BootstrapCssStyles perform: selector);
								nextPutAll: '"></div>' ]) ].

	BootstrapCssStyles class selectors
		select: [ :selector | selector isKeyword ]
		thenDo: [ :selector | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: selector with: 6 ]
				equals:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: (BootstrapCssStyles perform: selector with: 6);
								nextPutAll: '"></div>' ]) ]