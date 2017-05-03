private - Rendering
renderRemainingTabHeadersOn: aCanvas

	headers copyWithoutFirst
		do: [ :header | 
			| listItem |

			listItem := aCanvas listItem.
			self setRoleWith: BootstrapConstants presentation to: listItem on: aCanvas.
			listItem with: header ]