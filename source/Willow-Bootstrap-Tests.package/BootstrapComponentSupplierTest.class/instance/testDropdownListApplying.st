tests-Accessing
testDropdownListApplying

	| supplier dropDownList html |

	supplier := BootstrapComponentSupplier online.

	dropDownList := supplier dropdownListApplying: (ComponentMetadataCommand toDeclare: 'size' with: 10).

	html := self render: dropDownList.

	self assert: html equals: '<select id="id1" data-size="10" name="2"></select><script type="text/javascript">$("#id1").selectpicker();</script>'