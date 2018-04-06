as yet unclassified
iconName: anIconSymbol

	icon ifNotNilDo: #delete.
	
	icon := (BTIcon perform: anIconSymbol).
	
	self add: icon