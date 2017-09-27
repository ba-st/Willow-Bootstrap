tests-Supplying
testSingleSelectionListBoxDisplayingAtOnceApplying

	self assertRenderingOf: [ :supplier | supplier singleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ] equals: '<select name="1" size="10" class="form-control"></select>'