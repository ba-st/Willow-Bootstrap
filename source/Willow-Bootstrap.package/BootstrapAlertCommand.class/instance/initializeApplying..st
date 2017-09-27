initialization
initializeApplying: aContextualClassificationCommand

	classificationCommand := [ :container :constants | container addClass bootstrap alert + aContextualClassificationCommand + (container setAttribute: constants bootstrap role to: constants bootstrap alert) ]
		asWebComponentCommand