tests-Options
testViewportWithPadding

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | popover viewport: (BootstrapViewportConfiguration new selector: '#id1' padding: 5) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"viewport":{"selector":"#id1","padding":5}});</script>'