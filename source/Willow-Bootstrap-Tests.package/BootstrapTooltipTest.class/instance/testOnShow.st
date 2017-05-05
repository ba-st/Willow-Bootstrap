tests-Events
testOnShow

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowTooltip: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.tooltip",function(){});</script>'