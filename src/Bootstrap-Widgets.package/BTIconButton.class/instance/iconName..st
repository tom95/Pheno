as yet unclassified
iconName: anIconSymbol

	icon ifNotNilDo: #delete.
	
	icon := (BTIcon perform: (anIconSymbol ifNil: [#iconEmpty]))
		align: #(center center);
		expand: true.
	
	self add: icon