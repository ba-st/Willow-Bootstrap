private - Rendering
renderTableOrListGroupOn: canvas

	tableOrListGroupOptional
		withContentDo: [ :tableOrListGroup | canvas render: tableOrListGroup ]