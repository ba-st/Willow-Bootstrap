private
documentWrapping: content applying: aDocumentCommand

	^ GenericContainerWebView
		wrapping: content
		applying: [ :container :constants | container addClass bootstrap modalDialog + (container setAttribute: 'role' to: constants bootstrap document) + aDocumentCommand ]