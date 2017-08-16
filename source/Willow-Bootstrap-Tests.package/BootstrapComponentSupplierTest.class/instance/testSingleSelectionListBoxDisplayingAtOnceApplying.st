tests-Supplying
testSingleSelectionListBoxDisplayingAtOnceApplying

	| supplier listBox html |

	supplier := BootstrapComponentSupplier online.

	listBox := supplier singleSelectionListBoxDisplayingAtOnce: 10 applying: CompositeComponentCommand empty.

	html := self render: listBox.

	self assert: html equals: '<select name="1" size="10" class="form-control"></select>'