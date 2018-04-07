colors
changeIconName: anIconNameSymbol

	self svg: (BTIcon perform: (anIconNameSymbol ifNil: [#iconEmpty])) svg.
	
	cachedForm := nil.
	self changed