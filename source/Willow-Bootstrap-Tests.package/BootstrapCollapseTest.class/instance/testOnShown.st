tests-Events
testOnShown

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownCollapse: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.collapse",function(){});</script>'