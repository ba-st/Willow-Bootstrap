tests-Events
testOnHide

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideTooltip: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.tooltip",function(){});</script>'