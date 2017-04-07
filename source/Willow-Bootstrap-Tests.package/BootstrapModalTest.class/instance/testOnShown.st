tests-Methods
testOnShown

	| html |

	html := self renderModalContentApplying: [ :modal | modal onShown: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("shown.bs.modal",function(){});</script>'