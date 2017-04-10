tests-Methods
testHide

	| html |

	html := self renderModalContentApplying: [ :modal | modal hide ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("hide");</script>'