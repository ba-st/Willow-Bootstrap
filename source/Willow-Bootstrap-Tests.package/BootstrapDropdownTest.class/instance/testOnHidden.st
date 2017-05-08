tests
testOnHidden

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenDropdown: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.dropdown",function(){});</script>'