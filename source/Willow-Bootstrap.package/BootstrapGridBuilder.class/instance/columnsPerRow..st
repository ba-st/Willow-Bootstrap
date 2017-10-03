Configuring
columnsPerRow: anInteger

	| spec |

	spec := OrderedCollection new.
	anInteger timesRepeat: [ spec add: 12 // anInteger ].
	columnSpec := spec asArray