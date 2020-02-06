accessing
iconName: anIconSymbol

	icon ifNotNilDo: #delete.
	
	icon := (PHIcon perform: (anIconSymbol ifNil: [#iconEmpty]))
		align: #(center center);
		expand: true.
	
	self add: icon