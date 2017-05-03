private - Rendering
renderFirstTabHeaderOn: canvas

	"The first header must be rendered specially because needs the active style"

	| listItem |

	listItem := canvas listItem class: BootstrapCssStyles active.
	self setRoleWith: BootstrapConstants presentation to: listItem on: canvas.
	listItem with: headers first