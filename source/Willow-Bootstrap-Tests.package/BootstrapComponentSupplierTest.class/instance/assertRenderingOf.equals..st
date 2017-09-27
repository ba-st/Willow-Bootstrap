private
assertRenderingOf: aComponentCreationBlock equals: anExpectedHtml

	| component html |

	component := aComponentCreationBlock value: BootstrapComponentSupplier online.

	html := self render: component.

	self assert: html equals: anExpectedHtml