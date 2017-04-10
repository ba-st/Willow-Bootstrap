tests-Methods
testToggle

	| html |

	html := self renderModalContentApplying: [ :modal | modal toggle ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("toggle");</script>'