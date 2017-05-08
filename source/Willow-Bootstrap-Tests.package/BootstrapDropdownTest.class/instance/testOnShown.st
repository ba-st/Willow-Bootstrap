tests
testOnShown

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownDropdown: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.dropdown",function(){});</script>'