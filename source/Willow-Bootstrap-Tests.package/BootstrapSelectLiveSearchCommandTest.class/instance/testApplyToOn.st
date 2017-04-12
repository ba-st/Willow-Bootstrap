tests-processing
testApplyToOn

	| html |

	html := self apply: BootstrapSelectLiveSearchCommand default + BootstrapSelectCommand new toComponentDefinedBy: [ :canvas | canvas select ].

	self
		assert: html
		equals:
			'<select data-live-search="true" data-live-search-normalize="false" data-live-search-style="contains" class="selectpicker" id="id1"></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'