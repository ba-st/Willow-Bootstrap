private - Rendering
renderTabListOn: aCanvas applying: aCommantToTabList

	| tabList |

	tabList := self tabListOn: aCanvas.
	aCommantToTabList applyTo: tabList on: aCanvas.
	tabList
		with: [ self renderFirstTabHeaderOn: aCanvas.
			self renderRemainingTabHeadersOn: aCanvas ]