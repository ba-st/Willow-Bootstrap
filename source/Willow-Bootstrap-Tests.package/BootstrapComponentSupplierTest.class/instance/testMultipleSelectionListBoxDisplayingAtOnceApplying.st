tests-Supplying
testMultipleSelectionListBoxDisplayingAtOnceApplying

	| supplier listBox html |

	supplier := BootstrapComponentSupplier online.

	listBox := supplier multipleSelectionListBoxDisplayingAtOnce: 10 applying: CompositeComponentCommand empty.

	html := self render: listBox.

	self assert: html equals: '<select name="1" size="10" class="form-control" multiple="multiple"></select><input name="2" type="hidden"/>'