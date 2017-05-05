tests-Events
testOnInserted

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onInsertedPopover: JSFunction new) ].
	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("inserted.bs.popover",function(){});</script>'