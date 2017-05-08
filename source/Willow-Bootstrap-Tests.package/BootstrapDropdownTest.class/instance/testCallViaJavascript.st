tests
testCallViaJavascript

	| html |

	html := self renderDropdownContentApplying: [ :dropdown |  ].
	self
		assert: html
		equals:
			'<div class="dropdown"><a data-target="dropdown" role="button" id="id1">Menu<span class="caret"></span></a><ul class="dropdown-menu"><li>Menu option</li><li>Other option</li></ul></div><script type="text/javascript">$("#id1").dropdown();</script>'