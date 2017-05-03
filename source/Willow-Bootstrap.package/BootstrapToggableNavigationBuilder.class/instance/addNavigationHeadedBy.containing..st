private
addNavigationHeadedBy: aRenderable containing: aNavigationContent

	| identifiedContent |

	identifiedContent := self identifiedViewContaining: aNavigationContent.
	
	headers add: (self tabTitleWith: aRenderable linkedTo: identifiedContent).
	contents add: identifiedContent