tests-Methods
testShow

	| html |

	html := self renderModalContentApplying: [ :modal | modal show ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("show");</script>'