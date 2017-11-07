Accessing
jswillowbootstrapJs

	^ WAFileLibraryResource
		filepath: 'js/willow-bootstrap.js'
		mimeType: WAMimeType textJavascript
		cacheDuration: self class defaultCacheDuration
		contents: self jswillowbootstrapJsContent