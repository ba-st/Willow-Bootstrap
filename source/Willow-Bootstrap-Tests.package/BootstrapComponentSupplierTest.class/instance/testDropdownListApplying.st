tests-Accessing
testDropdownListApplying

	| supplier dropDownList html |

	supplier := BootstrapComponentSupplier online.

	dropDownList := supplier dropdownListApplying: (ComponentMetadataCommand toDeclare: 'size' with: 10).

	html := self render: dropDownList.

	self
		assert: html
		equals:
			'<select name="1" class="form-control selectpicker" data-size="10" id="id2"></select><script type="text/javascript">$("#id2").selectpicker("render");</script>'