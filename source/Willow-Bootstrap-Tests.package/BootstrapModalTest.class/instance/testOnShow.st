tests-Methods
testOnShow

	| html |

	html := self renderModalContentApplying: [ :modal | modal onShow: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("show.bs.modal",function(){});</script>'