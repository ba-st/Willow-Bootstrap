private
identifiedViewContaining: aNavigationContent

	| isFirstTab |

	"The first tab content needs to be styled as active in order to function properly"
	isFirstTab := contents isEmpty.
	
	^ IdentifiedWebView
		forDivNamed: self dataToggleValue
		containing: aNavigationContent
		applying: [ :div :constants | (div setAttribute: constants bootstrap role to: constants bootstrap tabpanel) + div addClass bootstrap tabPane + (div when: [ isFirstTab ] apply: div addClass bootstrap active) ]