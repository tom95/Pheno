colors
changeIconName: anIconNameSymbol

	self svg: (PHIcon perform: (anIconNameSymbol ifNil: [#iconEmpty])) svg.
	
	cachedForm := nil.
	self changed