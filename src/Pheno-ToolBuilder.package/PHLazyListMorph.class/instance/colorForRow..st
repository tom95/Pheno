drawing
colorForRow: row
	
	^(selectedRow notNil and: [ row = selectedRow])
		ifTrue: [ self styleContext withStateActiveDo: #color ]
		ifFalse: [ self styleContext color ].