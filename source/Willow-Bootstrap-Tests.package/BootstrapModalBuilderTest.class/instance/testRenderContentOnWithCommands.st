tests
testRenderContentOnWithCommands

	| html legalDialog |

	legalDialog := BootstrapComponentSupplier online dialogBuilder
		headerTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];
		applyingToDialog: [ :dialog | dialog addClass bootstrap fade ];
		buildApplying: [ :document | document addClass bootstrap modalLarge ].

	html := self render: legalDialog.

	self
		assert: html
		equals:
			'<div class="modal fade" tabindex="-1" role="dialog"><div class="modal-dialog modal-lg" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'