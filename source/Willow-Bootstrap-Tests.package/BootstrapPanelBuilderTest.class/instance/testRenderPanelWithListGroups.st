tests
testRenderPanelWithListGroups

	| panel html listGroup |

	listGroup := supplier unorderedListApplying: [ :list |  ] listing: #(1 2) applyingToEach: [ :listItem |  ].

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		wrapping: 'Panel content.';
		withListGroup: listGroup;
		buildApplying: [ :container | container addClass bootstrap panelDefault ].

	html := self render: panel.

	self
		assert: html
		equals:
			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><ul class="list-group"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul></div>'