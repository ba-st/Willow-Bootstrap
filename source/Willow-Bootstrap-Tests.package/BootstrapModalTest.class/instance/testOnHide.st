tests-Methods
testOnHide

	| html |

	html := self renderModalContentApplying: [ :modal | modal onHide: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("hide.bs.modal",function(){});</script>'