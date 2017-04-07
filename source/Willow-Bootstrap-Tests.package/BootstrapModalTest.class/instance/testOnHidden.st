tests-Methods
testOnHidden

	| html |

	html := self renderModalContentApplying: [ :modal | modal onHidden: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("hidden.bs.modal",function(){});</script>'