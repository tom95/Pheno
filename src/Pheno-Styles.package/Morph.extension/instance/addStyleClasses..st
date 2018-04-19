*Bootstrap-Styles
addStyleClasses: aCollectionOfSymbols
	
	" nil check for direct usage from toolbuilder specs "
	aCollectionOfSymbols ifNotNil: [
		aCollectionOfSymbols do: [:symbol | self addStyleClass: symbol]].
	
	self updateStyleProperties