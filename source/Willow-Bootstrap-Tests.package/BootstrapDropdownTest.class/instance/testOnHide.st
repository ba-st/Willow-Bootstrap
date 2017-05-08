tests
testOnHide

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideDropdown: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.dropdown",function(){});</script>'