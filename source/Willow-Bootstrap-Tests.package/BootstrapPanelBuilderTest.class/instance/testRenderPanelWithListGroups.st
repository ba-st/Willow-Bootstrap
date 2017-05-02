tests
testRenderPanelWithListGroups

	| panel html listGroup |

	listGroup := supplier
		unorderedListApplying: CompositeComponentCommand empty
		listing: #(1 2)
		applyingToEach: CompositeComponentCommand empty.

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		wrapping: 'Panel content.';
		withListGroup: listGroup;
		buildApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelDefault).

	html := self render: panel.

	self
		assert: html
		equals:
			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><ul class="list-group"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul></div>'