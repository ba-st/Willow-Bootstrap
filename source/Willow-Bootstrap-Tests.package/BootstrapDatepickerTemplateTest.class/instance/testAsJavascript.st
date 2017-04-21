tests
testAsJavascript

	self
		assert: ((BootstrapDatepickerTemplate context: self renderContext) leftArrow: [ :canvas | canvas span: '<' ] rightArrow: '>')
		equals: '{"leftArrow":"<span>&lt;</span>","rightArrow":"&gt;"}'