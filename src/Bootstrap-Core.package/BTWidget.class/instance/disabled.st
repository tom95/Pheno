accessing
disabled

	^ disabled or: [self parent ifNotNilDo: #disabled ifNil: [false]]