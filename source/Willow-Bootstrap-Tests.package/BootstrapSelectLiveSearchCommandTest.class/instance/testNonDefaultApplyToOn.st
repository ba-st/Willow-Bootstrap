tests-processing
testNonDefaultApplyToOn

	| html |

	html := self
		apply:
			(BootstrapSelectLiveSearchCommand normalize: true placeholderText: 'Search...' style: BootstrapSelectConstants startsWith)
				+ BootstrapSelectCommand new
		toComponentDefinedBy: [ :canvas | canvas select ].

	self
		assert: html
		equals:
			'<select data-live-search="true" data-live-search-normalize="true" data-live-search-placeholder="Search..." data-live-search-style="startsWith" class="selectpicker" id="id1"></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'